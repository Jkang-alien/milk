library(magick)
library(stringr)
library(pixelart)

milkList <- list.files('photo/', full.names = TRUE)
photoN <- length(milkList)
pngList <- stringr::str_c(rep('photo/milk', photoN), 1:photoN, rep('.png', photoN)) 

for (i in 1:length(milkList)) {
  milk <- image_read(milkList[i])
  milk <- image_resize(milk, '512x512')
  image_write(milk, path = pngList[i], format = 'png')
}
