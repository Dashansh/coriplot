#' A [ggplot2] theme formatted in the CORI style
#'
#' \code{theme_cori} provides a [ggplot2] theme formatted according to the
#' CORI style guide for web, with sensible defaults.
#'
#' @import extrafont
#' @md
#' @param base_family,base_size base font family and size
#' @export

theme_cori <- function(base_family = "TT Hoves",
                       base_size = 10.5) {

  ret <- ggplot2::theme_minimal(base_family = "TT Hoves",
                                base_size = base_size)

  # Panel Attributes

  ret$panel.grid.major.x = ggplot2::element_blank()

  ret$panel.grid.minor.x = ggplot2::element_blank()

  ret$panel.grid.minor.y = ggplot2::element_blank()

  ret$panel.grid.major.y = ggplot2::element_line(linetype = "dashed",
                                                 color = "grey")

  ret$panel.border = ggplot2::element_blank()

  ret$panel.background = ggplot2::element_blank()

  # Axis Attributes

  ret$axis.title.x = ggplot2::element_text(hjust = 0,
                                           size = 10.5,
                                           margin = ggplot2::margin(t = 19.5, b = 4, unit = "pt"))

  ret$axis.title.y = ggplot2::element_text(hjust = 1,
                                           angle = 90,
                                           margin = ggplot2::margin(t = 50, unit = "pt"))

  ret$axis.line.x = ggplot2::element_line(color = "grey",
                                          linetype = "solid")

  ret$axis.text.x = ggplot2::element_text(size = 10.5,
                                          hjust = 0.5)

  ret$axis.text.y = ggplot2::element_text(size = 10.5,
                                          hjust = 1,
                                          margin = ggplot2::margin(l = 4, r = 6, unit = "pt"))

  # Plot Attributes

  ret$plot.title = ggplot2::element_text(size = 18,
                                         hjust = 0,
                                         face = "bold",
                                         color = "#121E22",
                                         lineheight = 1.2,
                                         margin = ggplot2::margin(t = 18, b = 11.25, unit = "pt"))

  # Smarth we need to work on the font weight over here.
  # We need TT Hoves regular here, while for title we will use the bold font
  # Do we need to change the lineheight
  ret$plot.subtitle = ggplot2::element_text(size = 12,
                                        hjust = 0L,
                                        lineheight = 1.5,
                                        margin = ggplot2::margin(b = 32.5, unit = "pt"))

  ret$plot.caption = ggplot2::element_text(size = 9,
                                       hjust = 0)

  # legend attributes

  ret$legend.title = ggplot2::element_blank()

  ret$legend.position = "bottom"

  ret$legend.justification = c(-0.015,0)

  ret$legend.margin = ggplot2::margin(b = 10,
                                      unit = "pt")

  ret$legend.box.just = "left"

  ret$legend.text = ggplot2::element_text(size = 10.5,
                                          margin = ggplot2::margin(r = 25, unit = "pt"))

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
