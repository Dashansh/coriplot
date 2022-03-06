#' Thresholding
#'
#' This is a description
#' @param gg the ggplot object to add the threshold to.
#' @param intercept x or y intercept (indicated by axis) through which the vertical or horizontal threshold is made.
#' @param axis Axis along which a threshold is to be added. Default is "x" indicating a vertical threshold
#' @param label Label to add to the graph. Defaults to an empty string
#' @param shift Variable to shift the label by "shift" units above thresholding line along "y", or by "shift" units to the right of thresholding line along "x"
#' @export
threshold<-function(gg, intercept,axis="x",label="", shift=0){
  if (!inherits(gg, "ggplot")) return(gg)
  if(axis == "x"){
    cat(intercept,axis,label)
    gg <- gg +
    ggplot2::geom_vline(xintercept = intercept)+
      ggplot2::annotate(geom = 'text',x=intercept+shift,y=Inf, label="label", color="#26535C", vjust="top")
  } else {
    gg <- gg +
      ggplot2::geom_hline(yintercept = intercept)+
      ggplot2::annotate(geom = 'text',y=intercept+shift,x=Inf, label="label", color="#26535C", hjust="right")
  }
  gg
}



