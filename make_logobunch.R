library(magick)

canvas <- image_blank(600,750, "transparent")

img_kntr <- image_read("https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/knitr.png") %>% 
  image_resize("200x", filter = "Lanczos")
img_rmd <- image_read("https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/rmarkdown.png") %>% 
  image_resize("200x", filter = "Lanczos")
img_pgdwn <- image_read("https://user-images.githubusercontent.com/163582/51942716-66be4180-23dd-11e9-8dbc-fdb4f465d1c2.png") %>% 
  image_fill("green", point = "+1+1", fuzz=5, refcolor = "white") %>% 
  image_fill("green", point = "+199+1", fuzz=5, refcolor = "white") %>% 
  image_fill("green", point = "+199+230", fuzz=5, refcolor = "white") %>% 
  image_fill("green", point = "+1+230", fuzz=5, refcolor = "white") %>% 
  image_transparent("green", fuzz=5)

img_blgdwn <- image_read("https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/blogdown.png") %>% 
  image_resize("200x", filter = "Lanczos")
image_bkdwn <- image_read("https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/bookdown.png") %>% 
  image_resize("200x", filter = "Lanczos")
img_xrgn <- image_read("https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/xaringan.png") %>% 
  image_resize("200x", filter = "Lanczos")
img_pstrdwn <- image_read("https://raw.githubusercontent.com/brentthorne/posterdown/master/images/betterhexlogo.png") %>% 
  image_resize("200x", filter = "Lanczos")

img_pkgdwn <- image_read("https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/pkgdown.png") %>% 
  image_resize("200x", filter = "Lanczos")

img_ofdwn <- image_read("https://davidgohel.github.io/officedown/reference/figures/logo.png")

img <- canvas %>% 
 image_composite(img_kntr, operator = "Over") %>% 
 image_composite(img_rmd, offset = "+200", operator = "Over") %>% 
 image_composite(img_pgdwn, offset = "+400", operator = "Over") %>% 
 image_compose(img_blgdwn, offset = "+100+172", operator = "Over") %>% 
 image_composite(img_bkdwn, offset = "+300+172", operator = "Over") %>% 
 image_composite(img_xrgn, offset = "+200+344", operator = "Over") %>% 
 image_composite(img_pstrdwn, offset = "+400+344", operator = "Over") %>% 
 image_composite(img_pkgdwn, offset = "+300+516", operator = "Over")
img %>% 
 image_write("fig/logobunch.png")
