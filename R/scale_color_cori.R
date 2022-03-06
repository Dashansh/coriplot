#' CORI Color Scales
#'
#' Implements color palette named vectors as the color scale.
#' @param color Pass a named vector color palette. Defaults to `cori_primary` colors.
#' @export
scale_color_cori<-function(color = cori_primary){
  ggplot2::scale_color_manual(values = unname(color))
}

