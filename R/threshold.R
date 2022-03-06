#' Thresholding
#'
#' This is a description
#' @param intercept x or y intercept (indicated by axis) through which the vertical or horizontal threshold is made.
#' @param axis Axis along which a threshold is to be added. Default is "x" indicating a vertical threshold
#' @param label Label to add to the graph. Defaults to an empty string
#' @param shift=0 Pass a cori color palette. Deafults to `cori_primary` colors
#' @export
threshold<-function(intercept,axis="x",label="", shift=0){
  if(axis == "x"){
    cat(intercept,axis,label)
    ggplot2::geom_vline(xintercept = intercept)
   #+   ggplot2::annotate(geom = 'text',x=4.5+shift,y=Inf, label="label", color="#26535C", vjust="top")
  } else {
    ggplot2::geom_hline(yintercept = intercept)
#    +  ggplot2::geom_text(aes(x=20, label=label, y=intercept+shift), color="#26535C", text=element_text(size=11))
  }
}


