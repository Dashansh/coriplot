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

  ret$panel.grid.major.x = ggplot2::element_blank()
  ret$panel.grid.minor.x = ggplot2::element_blank()
  ret$panel.grid.minor.y = ggplot2::element_blank()
  ret$panel.grid.major.y = ggplot2::element_line(linetype = "dashed",
                                                 color = "grey")

  ret$panel.border = ggplot2::element_blank()
  ret$panel.background = ggplot2::element_blank()

  ret$axis.line.x = ggplot2::element_line(color = "grey", linetype = "solid")

  # Plot Attributes

  # plot.tag = ggplot2::element_text(size = base_size * 1.5,
  #                                  hjust = 0L,
  #                                  vjust = 0L,
  #                                  face = "bold",
  #                                  margin = ggplot2::margin(b = 10L)),
  # plot.tag.position = "topleft",
  #
  ret$plot.title = ggplot2::element_text(size = 24,
                                         hjust = 0L,
                                         vjust = 0L,
                                         face = "bold",
                                         margin = ggplot2::margin(b = 10L))
  # ret$plot.title.position = "plot"

  ret$plot.subtitle = ggplot2::element_text(size = 14,
                                        hjust = 0L,
                                        vjust = 0L,
                                        margin = ggplot2::margin(b = 10L))

  ret$plot.caption = ggplot2::element_text(size = base_size * 7 / 8.5,
                                       hjust = 0)


  # margin = ggplot2::margin(t = half_line * 0.9)

  ret
}
