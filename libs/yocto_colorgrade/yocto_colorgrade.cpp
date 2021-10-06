//
// Implementation for Yocto/Grade.
//

//
// LICENSE:
//
// Copyright (c) 2020 -- 2020 Fabio Pellacini
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice,
// this list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
// this list of conditions and the following disclaimer in the documentation
// and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
//

#include "yocto_colorgrade.h"

#include <yocto/yocto_color.h>
#include <yocto/yocto_sampling.h>
#include <iostream>

// -----------------------------------------------------------------------------
// COLOR GRADING FUNCTIONS
// -----------------------------------------------------------------------------
namespace yocto {

    void toneMapping(vec4f &c, float exposure, bool filmic,bool srgb);

    void colorTint(vec4f &c, vec3f tint);

    void saturation(vec4f &pixel, float saturation);

    void calculateGaus(float *values, float sigma);

    void contrast_(vec4f &pixel, float contrast);

    void vignette(color_image& image, float vignette,int& i, int& j);

    void filmGrain(vec4f &pixel, float grain,rng_state& rng);

    void gaussianBlur(color_image &image, float sigma, int blurIntensity);

    void anaglyph(color_image &image, int distance);

    void edgeDetection(color_image& image);

    color_image grade_image(const color_image& image, const grade_params& params)
    {

        auto graded = image;
        auto rng = make_rng(11234);
        for (auto j: range(image.height))
        {
            for (auto i: range(image.width))
            {
                graded[{i, j}] = graded[{i, j}] * pow(2, params.exposure);
                auto &pixel = graded[{i, j}];
                //Mosaic Effect
                if (params.grid != 0)
                    pixel = image[{i - i % params.mosaic, j - j % params.mosaic}];
                //Grid Effect
                if (params.grid != 0 && (0 == i % params.grid || 0 == j % params.grid))
                    pixel = 0.5 * pixel;
                if (!params.no_tone)
                    toneMapping(pixel, params.exposure, params.filmic, params.srgb);
                colorTint(pixel, params.tint);
                saturation(pixel, params.saturation);
                contrast_(pixel, params.contrast);
                vignette(graded, params.vignette, i, j);
                filmGrain(pixel, params.grain, rng);
            }
        }
        gaussianBlur(graded, params.sigma, params.blur_intensity);
        if (params.anaglyph)
            anaglyph(graded, params.distanceRightImage);
        if (params.edge_detection)
            edgeDetection(graded);

        return graded;
    }
    void edgeDetection(color_image& image)
    {
        for (int y = 0; y < image.height; ++y)
        {
            for (int x = 0; x < image.width; ++x)
            {
                saturation(image[{x,y}],0);
            }
        }
        gaussianBlur(image,5,1);

    }

    void anaglyph(color_image &image, int distance)
    {
        float matrix[2][9] = {{1,0,0,0,0,0,0,0,0}, {0,0,0,0,1,0,0,0,1}};
        color_image rightImage = make_image(image.width - distance,image.height,false);
        for (int y = 0; y < image.height; ++y)
            for (int x = 0; x < rightImage.width; ++x)
                rightImage[{x,y}] = image[{x + distance,y}];
        for (int y = 0; y < rightImage.height; ++y)
        {
            for (int x = 0; x < rightImage.width; ++x)
            {
                float& r = image[{x,y}].x;
                float& g = image[{x,y}].y;
                float& b = image[{x,y}].z;

                float& r1 = rightImage[{x,y}].x;
                float& g1 = rightImage[{x,y}].y;
                float& b1 = rightImage[{x,y}].z;

                r =     r*matrix[0][0] + g*matrix[0][1] + b*matrix[0][2] +
                        r1*matrix[1][0] + g1*matrix[1][1] + b1*matrix[1][2];

                g =     r*matrix[0][3] + g*matrix[0][4] + b*matrix[0][5] +
                        r1*matrix[1][3] + g1*matrix[1][4] + b1*matrix[1][5];

                b =     r*matrix[0][6] + g*matrix[0][7] + b*matrix[0][8] +
                        r1*matrix[1][6] + g1*matrix[1][7] + b1*matrix[1][8];

            }
        }


    }
    void horizontalGaussianBlur(color_image &image, float sigma);
    void verticalGaussianBlur(color_image &image, float sigma);
    void gaussianBlur(color_image &image, float sigma, int blurIntensity)
    {
        if (sigma == 0)
            return;
        for (int i = 0; i < blurIntensity; ++i)
        {
            horizontalGaussianBlur(image, sigma);
            verticalGaussianBlur(image, sigma);
        }
    }
    void verticalGaussianBlur(color_image &image, float sigma)
    {
        float values[11];
        calculateGaus(values, sigma);
        float sumKernel[3];
        for (int y = 0; y < image.height; ++y)
        {
            for (int x = 0; x < image.width; ++x)
            {
                sumKernel[0] = 0;
                sumKernel[1] = 0;
                sumKernel[2] = 0;
                for (int i = -5; i < 6; ++i)
                {
                    if(!(y+ i < 0 || y + i >= image.height))
                    {
                        sumKernel[0] += image[{x ,y+ i}].x * values[i+5];
                        sumKernel[1] += image[{x ,y+ i}].y * values[i+5];
                        sumKernel[2] += image[{x ,y+ i}].z * values[i+5];
                    }
                    else
                    {
                        sumKernel[0] += image[{x ,y}].x * values[i+5];
                        sumKernel[1] += image[{x,y}].y * values[i+5];
                        sumKernel[2] += image[{x,y}].z * values[i+5];
                    }
                }
                image[{x,y}].x = sumKernel[0];
                image[{x,y}].y = sumKernel[1];
                image[{x,y}].z = sumKernel[2];
            }
        }
    }
    void horizontalGaussianBlur(color_image &image, float sigma)
    {
        float values[11];
        calculateGaus(values, sigma);
        float sumKernel[3];
        for (int y = 0; y < image.height; ++y)
        {
            for (int x = 0; x < image.width; ++x)
            {
                sumKernel[0] = 0;
                sumKernel[1] = 0;
                sumKernel[2] = 0;
                for (int i = -5; i < 6; ++i)
                {
                    if(!(x + i < 0 || x + i >= image.width))
                    {
                        sumKernel[0] += image[{x + i,y}].x * values[i+5];
                        sumKernel[1] += image[{x + i,y}].y * values[i+5];
                        sumKernel[2] += image[{x + i,y}].z * values[i+5];
                    }
                    else
                    {
                        sumKernel[0] += image[{x ,y}].x * values[i+5];
                        sumKernel[1] += image[{x,y}].y * values[i+5];
                        sumKernel[2] += image[{x,y}].z * values[i+5];
                    }
                }
                image[{x,y}].x = sumKernel[0];
                image[{x,y}].y = sumKernel[1];
                image[{x,y}].z = sumKernel[2];
            }
        }
    }
    void calculateGaus(float *values, float sigma)
    {
        float normalizeValue = 0;
        for (int i = -5; i < 6; ++i)
        {
            values[i+5] = exp(-(pow((float)i,2)/(2 * pow(sigma,2))))/ sqrt(2 * pi * pow(sigma,2));

            normalizeValue += values[i+5];
        }
        for (int i = 0; i < 11; ++i)
            values[i] = values[i] / normalizeValue;
    }
    void filmGrain(vec4f &pixel, float grain,rng_state& rng)
    {
        pixel = pixel + (rand1f(rng) - 0.5) * grain;
    }
    void vignette(color_image& image, float vignette,int& i, int& j)
    {
        auto vr = 1 - vignette;
        vec2f ji = {float(j),float(i)};
        vec2f size = {float(image.height), float(image.width)};
        auto  r    = length(ji - size/2) / length(size / 2);
        image[{i,j}] = image[{i,j}] * (1 - smoothstep(vr, 2 * vr, r));
    }
    void contrast_(vec4f &pixel, float contrast)
    {
        pixel = gain(pixel, 1 - contrast);
    }
    void saturation(vec4f &pixel, float saturation)
    {
        float g = (pixel.x + pixel.y + pixel.z) / 3;
        pixel = g + (pixel - g) * (saturation * 2);
    }
    void colorTint(vec4f &c, vec3f tint)
    {
        c.x = c.x * tint.x;
        c.y = c.y * tint.y;
        c.z = c.z * tint.z;
    }
    void toneMapping(vec4f &c, float exposure, bool filmic,bool srgb)
    {
        if(filmic)
        {
            c *= 0.6;
            c = (pow(c, 2) * 2.51 + c * 0.03) /
                (pow(c, 2) * 2.43 + c * 0.59 + 0.14);
        }
        if(srgb)
            c = pow(c, 1 / 2.2);
        c = clamp(c, 0, 1);
    }

}  // namespace yocto