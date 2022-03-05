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

theme_cori <- function(base_size = 8.5, base_family = "TT Hoves",
                             base_line_size = 0.5,
                             base_rect_size = 0.5) {

  half_line <- base_size / 2L

  ret <- ggplot2::theme_minimal(base_family = "TT Hoves",
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

  ret$axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 20, b = 10),
                                           hjust = 0)

  # margin = ggplot2::margin(t = half_line * 0.9)

  # legend attributes

  # legend.background = ggplot2::element_blank(),

  # legend.spacing = ggplot2::unit(20L, "pt"),
  # legend.spacing.x = ggplot2::unit(4L, "pt"),
  # legend.spacing.y = NULL,
  #
  # legend.key = ggplot2::element_blank(),
  # legend.key.size = ggplot2::unit(10L, "pt"),
  # legend.key.height = NULL,
  # legend.key.width = NULL,
  #
  # legend.text = ggplot2::element_text(size = base_size * 9.5 / 8.5,
  #                                     vjust = 0.5),
  ret$legend.text.align = 0
  ret$legend.title = ggplot2::element_blank()
  # legend.title.align = NULL,
  #

  ret$legend.position = "bottom"
  ret$legend.direction = "horizontal"
  # legend.justification = NULL,
  # legend.margin = ggplot2::margin(t = 6L, r = 0L, b = 6L, l = 0L, "pt"),
  #
  # legend.box = "horizontal",
  # legend.box.margin = NULL,
  # legend.box.background = NULL,
  # legend.box.spacing = NULL,

  ret
}

#' Import Roboto Condensed font for use in charts
#'
#' Roboto Condensed is a trademark of Google.
#'
#' There is an option `hrbrthemes.loadfonts` which -- if set to `TRUE` -- will
#' call `extrafont::loadfonts()` to register non-core fonts with R PDF & PostScript
#' devices. If you are running under Windows, the package calls the same function
#' to register non-core fonts with the Windows graphics device.
#'
#' @md
#' @note This will take care of ensuring PDF/PostScript usage. The location of the
#'   font directory is displayed after the base import is complete. It is highly
#'   recommended that you install them on your system the same way you would any
#'   other font you wish to use in other programs.
#' @export
import_cori_font <- function() {

  cori_font_dir <- system.file("fonts", "tt-hoves", package="coriplot")

  # suppressWarnings(suppressMessages(extrafont::font_import(rc_font_dir, prompt=FALSE)))
  #
  # message(
  #   sprintf(
  #     "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
  #     rc_font_dir)
  # )

}

#' @rdname TTHoves
#' @md
#' @title TT Hoves font name R variable aliases
#' @description `cori_font` == "`TT Hoves`"
#' @format length 1 character vector
#' @export
cori_font <- "TT Hoves"
