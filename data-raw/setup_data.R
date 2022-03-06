# note that in addition to the packages imported and suggested by coriplot,
# this script requires the devtools and qdapDictionaries packages

library(dplyr)

# cori_network_communities dataset ------------------------------------------------------

cori_network_communities <- readr::read_csv("data-raw/cori_network_communities.csv")

usethis::use_data(cori_network_communities, overwrite = TRUE)

# population_sample_data dataset ------------------------------------------------------

population_sample_data <- readr::read_csv("data-raw/population_sample_data.csv")

usethis::use_data(population_sample_data, overwrite = TRUE)

# time_series_sample_data dataset ------------------------------------------------------

time_series_sample_data <- readr::read_csv("data-raw/time_series_sample_data.csv")
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


# remote_work_by_ed_level_2021 dataset ------------------------------------------------------
remote_work_by_ed_level %>%
  subset(date > "2020-12-31" & date < "2022-01-01") %>%
  mutate(education_level = factor(education_level)) -> remote_work_by_ed_level_2021

remote_work_by_ed_level_2021$education_level <- recode_factor(remote_work_by_ed_level_2021$education_level,
                                          bachelors_or_higher = "Bachelors or higher",
                                          high_school_no_college = "High School and no College",
                                          less_than_high_school = "Less than High School",
                                          some_college_or_associates = "Some College or Associates")
usethis::use_data(remote_work_by_ed_level_2021, overwrite = TRUE)


# remote_work_by_ed_level_2021 dataset ------------------------------------------------------
rural_urban_2021 <-
  time_series_sample_data[,c("date","less_than_high_school","high_school_no_college")] %>%
  subset(date > "2020-12-31" & date < "2022-01-01")

colnames(rural_urban_2021) <- c("date","urban","rural")

rural_urban_2021 <- tidyr::pivot_longer(
  rural_urban_2021,
  cols = !date,
  names_to = "education_level",
  values_to = "pct_working_remotely")

usethis::use_data(rural_urban_2021, overwrite = TRUE)
