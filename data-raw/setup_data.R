# note that in addition to the packages imported and suggested by coriplot,
# this script requires the devtools and qdapDictionaries packages

library(dplyr)

# cori_network_communities dataset ------------------------------------------------------

cori_network_communities <- readr::read_csv("data_raw/cori_network_communities.csv")

usethis::use_data(cori_network_communities, overwrite = TRUE)

# population_sample_data dataset ------------------------------------------------------

population_sample_data <- readr::read_csv("data_raw/population_sample_data.csv")

usethis::use_data(population_sample_data, overwrite = TRUE)

# time_series_sample_data dataset ------------------------------------------------------

time_series_sample_data <- readr::read_csv("data_raw/time_series_sample_data.csv")
time_series_sample_data$date<- as.Date(time_series_sample_data$date, "%m/%d/%y")

usethis::use_data(time_series_sample_data, overwrite = TRUE)

# remote_work_by_ed_level dataset ------------------------------------------------------

remote_work_by_ed_level <- time_series_sample_data %>%
  tidyr::pivot_longer(
    cols = !date,
    names_to = "education_level",
    values_to = "pct_working_remotely"
  )

usethis::use_data(remote_work_by_ed_level, overwrite = TRUE)
