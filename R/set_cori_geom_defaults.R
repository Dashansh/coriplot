#' The Urban Institute [ggplot2] theme
#'
#' \code{set_cori_geom_defaults} provides a [ggplot2] theme formatted according to the
#' Urban Institute style guide, with sensible defaults.
#'
#' @param base_family The base font family for the theme.
#'
#' @export
#'
set_cori_geom_defaults <- function(base_family = "TT Hoves") {

  # add base_family font to text and label geoms ---------------------------

  ggplot2::update_geom_defaults("text", list(family = base_family, size = 1 / 0.352777778))
  ggplot2::update_geom_defaults("label", list(family = base_family, size = 1 / 0.352777778))

  # set defaults for geoms --------------------------------------------------

  ggplot2::update_geom_defaults("point", list(colour = "#00835D", size = 2.5, alpha = 0.8))
  ggplot2::update_geom_defaults("line", list(colour = "#00835D", size = 1, alpha = 0.8))
  ggplot2::update_geom_defaults("vline", list(colour = "#D2D6D7", size = 0.264))
  ggplot2::update_geom_defaults("hline", list(colour = "#D2D6D7", size = 0.264))

}
