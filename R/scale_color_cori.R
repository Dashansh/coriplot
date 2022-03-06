#' Cori color scales
#'
#' This is a description
#' @param color Pass a cori color palette. Deafults to `cori_primary` colors
#' @export
scale_color_cori<-function(color = cori_primary){
  ggplot2::scale_color_manual(values = unname(color))
}

