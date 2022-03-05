#' A [ggplot2] theme formatted in the CORI style
#'
#' \code{theme_cori} provides a [ggplot2] theme formatted according to the
#' CORI style guide for web, with sensible defaults.
#'
#' @import extrafont
#' @import ggrepel
#' @md
#' @param base_family,base_size base font family and size
#' @param base_line_size,base_rect_size base line and rectangle sizes
#' @export

theme_cori <- function(base_size = 8.5, base_family = "Times New Roman",
                             base_line_size = 0.5,
                             base_rect_size = 0.5) {

  half_line <- base_size / 2L

  ret <- ggplot2::theme(
    line = ggplot2::element_line(colour = "#000000",
                                 size = base_line_size,
                                 linetype = 1L,
                                 lineend = "butt"),
    rect = ggplot2::element_rect(fill = "#FFFFFF",
                                 colour = "#000000",
                                 size = base_rect_size,
                                 linetype = 1L),
    text = ggplot2::element_text(family = base_family,
                                 face = "plain",
                                 colour = "#000000",
                                 size = base_size,
                                 hjust = 0.5,
                                 vjust = 0.5,
                                 angle = 0,
                                 lineheight = 0.9,
                                 margin = ggplot2::margin(),
                                 debug = FALSE),
    panel.grid.major.x = ggplot2::element_blank(),
    panel.grid.minor.x = ggplot2::element_blank(),
    panel.grid.minor.y = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(linetype = "dashed", color = "grey"),
    panel.border = ggplot2::element_blank(),
    panel.background = ggplot2::element_blank(),

    axis.line.x = ggplot2::element_line(color = "grey", linetype = "solid")

  )

  ret
}
