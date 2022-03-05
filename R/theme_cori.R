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

  ret <- ggplot2::theme_minimal(base_family = "IBMPlexSans",
                                base_size = base_size)

  ret$line = ggplot2::element_line(colour = "#000000",
                                   size = base_line_size,
                                   linetype = 1L,
                                   lineend = "butt")

  ret$rect = ggplot2::element_rect(fill = "#FFFFFF",
                                   colour = "#000000",
                                   size = base_rect_size,
                                   linetype = 1L)

  ret$text = ggplot2::element_text(family = base_family,
                                   face = "plain",
                                   colour = "#000000",
                                   size = base_size,
                                   hjust = 0.5,
                                   vjust = 0.5,
                                   angle = 0,
                                   lineheight = 0.9,
                                   margin = ggplot2::margin(),
                                   debug = FALSE)

  ret$panel.grid.major.x = ggplot2::element_blank()
  ret$panel.grid.minor.x = ggplot2::element_blank()
  ret$panel.grid.minor.y = ggplot2::element_blank()
  ret$panel.grid.major.y = ggplot2::element_line(linetype = "dashed",
                                                 color = "grey")

  ret$panel.border = ggplot2::element_blank()
  ret$panel.background = ggplot2::element_blank()

  ret$axis.line.x = ggplot2::element_line(color = "grey", linetype = "solid")

  ret
}
