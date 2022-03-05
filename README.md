
<!-- README.md is generated from README.Rmd. Please edit that file -->

# coriplot

<!-- badges: start -->

[![R-CMD-check](https://github.com/Dashansh/coriplot/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/Dashansh/coriplot/actions/workflows/check-standard.yaml)
<!-- badges: end -->

The goal of coriplot is to …

## Installation

You can install the development version of coriplot from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Dashansh/coriplot")
```

## Example

This is a basic example which shows you how to solve a common problem:
Dashanh’s workspace

``` r
library(ggplot2)
library(tidyverse)
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
#> ✓ tibble  3.1.6     ✓ dplyr   1.0.8
#> ✓ tidyr   1.2.0     ✓ stringr 1.4.0
#> ✓ readr   2.1.2     ✓ forcats 0.5.1
#> ✓ purrr   0.3.4
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
library(coriplot)


fig <- remote_work_by_ed_level %>%
  ggplot(aes(as.Date(date),
             pct_working_remotely,
             group = education_level,
             color = education_level)) +
  geom_line(lwd = 1.5) +
  xlab("Some Time") +
  labs(title = "This should not exceet\nMore than two lines",
       subtitle = "Some random subtitle",
       caption = "This image is not mine",
       tag = "1st") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") + 
  scale_y_continuous(expand = c(0, 0), limits = c(0,NA))+
  scale_color_cori(cori_primary) 

fig
```

<img src="man/figures/README-example1-1.png" width="100%" />

abhishek’s workspace

``` r
fig <- remote_work_by_ed_level[1:2,] %>%
  ggplot(aes(as.Date(date), pct_working_remotely, group = education_level, color = education_level)) +
  geom_line(lwd = 1.5) +
  xlab("") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b") + 
  scale_y_continuous(expand = c(0, 1)) +
  geom_point(size = 2)+
  ggtitle("Line Chart - straight lines") +
  labs(subtitle = "Multiple Colors")+
  scale_color_cori(cori_blue) 
fig 
#> geom_path: Each group consists of only one observation. Do you need to adjust
#> the group aesthetic?
```

<img src="man/figures/README-example2-1.png" width="100%" />

This is a basic example which shows you how to make curved lines:

``` r
library(ggplot2)
library(tidyverse)

fig <- remote_work_by_ed_level[1:20,] %>%
  ggplot(aes(as.Date(date),
             pct_working_remotely,
             group = education_level,
             color = education_level)) +
  geom_smooth(method = 'loess',
              linetype = 1,
              size = 1,
              lwd = 1.5,
              se= FALSE) +
  xlab("") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b") + 
  scale_y_continuous(expand = c(0, 0)) +
  geom_point(size = 2)+
  ggtitle("Line Chart - Curved lines")+
  labs(subtitle = "Multiple Colors")+
  scale_color_cori(cori_primary) 
#> Warning: Duplicated aesthetics after name standardisation: size
fig 
#> `geom_smooth()` using formula 'y ~ x'
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : span too small. fewer data values than degrees of freedom.
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : pseudoinverse used at 18382
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : neighborhood radius 61.615
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : reciprocal condition number 0
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : There are other near singularities as well. 3920.6
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : span too small. fewer data values than degrees of freedom.
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : pseudoinverse used at 18382
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : neighborhood radius 61.615
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : reciprocal condition number 0
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : There are other near singularities as well. 3920.6
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : span too small. fewer data values than degrees of freedom.
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : pseudoinverse used at 18382
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : neighborhood radius 61.615
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : reciprocal condition number 0
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : There are other near singularities as well. 3920.6
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : span too small. fewer data values than degrees of freedom.
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : pseudoinverse used at 18382
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : neighborhood radius 61.615
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : reciprocal condition number 0
#> Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
#> parametric, : There are other near singularities as well. 3920.6
```

<img src="man/figures/README-example3-1.png" width="100%" />
