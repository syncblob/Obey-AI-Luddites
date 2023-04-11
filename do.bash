

magick ./mist/*.png  -resize 800x800 ./clean/%d.jpg
magick ./clean/*.jpg +noise Uniform -enhance -enhance -despeckle ./clean2/%d.jpg
magick ./clean2/*.jpg  -enhance  -resize 400x400 ./clean3/%d.jpg
magick ./clean3/*.jpg   -sharpen 4  -resize  512x512 ./cleanDone/%d.png


 