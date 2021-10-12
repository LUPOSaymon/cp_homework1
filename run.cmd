.\bin\ycolorgrade --image tests\greg_zaal_artist_workshop.hdr --exposure 0 --output out\greg_zaal_artist_workshop_01.jpg
.\bin\ycolorgrade --image tests\greg_zaal_artist_workshop.hdr --exposure 1 --filmic --contrast 0.75 --saturation 0.75 --output out\greg_zaal_artist_workshop_02.jpg
.\bin\ycolorgrade --image tests\greg_zaal_artist_workshop.hdr --exposure 0.8 --contrast 0.6 --saturation 0.5 --grain 0.5 --output out\greg_zaal_artist_workshop_03.jpg

.\bin\ycolorgrade --image tests\toa_heftiba_people.jpg --exposure -1 --filmic --contrast 0.75 --saturation 0.3 --vignette 0.4 --output out\toa_heftiba_people_01.jpg
.\bin\ycolorgrade --image tests\toa_heftiba_people.jpg --exposure -0.5 --contrast 0.75 --saturation 0 --output out\toa_heftiba_people_02.jpg
.\bin\ycolorgrade --image tests\toa_heftiba_people.jpg --exposure -0.5 --contrast 0.6 --saturation 0.7 --tint-red 0.995 --tint-green 0.946 --tint-blue 0.829 --grain 0.3 --output out\toa_heftiba_people_03.jpg
.\bin\ycolorgrade --image tests\toa_heftiba_people.jpg --mosaic 16 --grid 16 --output out\toa_heftiba_people_04.jpg
.\bin\ycolorgrade --image tests\deer.jpeg --blur_intensity 10 --sigma 5  --no_tone --output out\deerBlur.jpeg
.\bin\ycolorgrade --image tests\deer.jpeg --anaglyph --no_tone --output out\deerAnaglyph.jpeg
.\bin\ycolorgrade --image tests\deer.jpeg --gray_anaglyph --no_tone --output out\deerGrayAnaglyph.jpeg
.\bin\ycolorgrade --image tests\newyork.jpg --vhs_effect --no_tone --output out\newyorkVHS.jpg
.\bin\ycolorgrade --image tests\newyork.jpg --invert_color --no_tone --output out\newyorkInvertedColor.jpg
.\bin\ycolorgrade --image tests\fox1.png --oil_painting --no_tone --output out\fox1OilPainting.png
.\bin\ycolorgrade --image tests\fox.png --oil_painting --no_tone --output out\foxOilPainting.png
.\bin\ycolorgrade --image tests\forest1.jpg --oil_painting --no_tone --output out\forestOilPainting.jpg
