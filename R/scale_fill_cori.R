#' CORI Fill scales
#'
#' Implements color palette named vectors as the fill color.
#' @param color Pass a named vector color palette. Defaults to `cori_primary` colors.
#' @export
scale_fill_cori<-function(color = cori_primary){
  ggplot2::scale_fill_manual(values = unname(color))
}
