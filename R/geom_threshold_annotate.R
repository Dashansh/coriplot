#' geom_threshold_annotate
#'
#' This is a utility function that allows the user to add a line threshold with text annotation using an intercept parameter.
#' The shift parameter allows the user to relatively adjust the text with respect to the defined thresholding.
#'
#' @param intercept x or y intercept (indicated by axis) through which the vertical or horizontal threshold is made.
#' @param axis Axis along which a threshold is to be added. Default is "x" indicating a vertical threshold
#' @param label Label to add to the graph. Defaults to an empty string
#' @param shift Variable to shift the label by "shift" units above thresholding line along "y", or by "shift" units to the right of thresholding line along "x"
#' @export
geom_threshold_annotate <- function(intercept,axis="x",label="", shift=0){

  if(axis == "x"){
    list(
      geom_vline(xintercept = intercept),
      annotate(geom = 'text',x=intercept+shift,y=Inf, label=label, color="#06BCCB", vjust="top"))
  } else {
    list(
      geom_hline(yintercept = intercept),
      annotate(geom = 'text',y=intercept+shift,x=Inf, label=label, color="#06BCCB", hjust="right", size = 10.5))
  }
}



