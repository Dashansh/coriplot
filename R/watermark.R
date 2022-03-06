#' Watermark
#'
#' This adds the CORI watermark to a gg object
#'
#' @param alpha Pass the opacity value for the watermark between 0 - 1 (Default: 0.5)
#' @export
watermark<-function(alpha = 0.2){
  m = png::readPNG(system.file("img", "logo.png", package="coriplot"))
  img <- matrix(rgb(m[,,1],m[,,2],m[,,3], m[,,4] * alpha), nrow=dim(m)[1])
  ggplot2::annotation_custom(grid::rasterGrob(img),
                             xmin=-Inf,
                             xmax=Inf,
                             ymin=-Inf,
                             ymax=Inf)
}
