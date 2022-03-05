
lineplots <- function(data, x, y) {
  ggplot2::ggplot(data = data, ggplot2::aes(x = mpg, y = cyl)) +
    ggplot2::geom_line(linetype = "dashed")+
    ggplot2::geom_point() -> g

  return(g)
}

