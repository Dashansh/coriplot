#' @md
#' @param color
#' @export
scale_color_cori<-function(color = cori_primary){
  ggplot2::scale_color_manual(values = unname(color))
}

