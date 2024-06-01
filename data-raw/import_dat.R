library("here")
library("readxl")
library("stringr")
library("dplyr")

iarc_chem <- readxl::read_excel(here::here("data-raw", "agents_classified_by_the_IARC_monographs,_volumes_1–135.xlsx"),
  skip = 1
) |>
  janitor::clean_names()



iris_chem <- read.csv(here::here("data-raw", "iris_05312024.csv")) |>
  janitor::clean_names() |>
  mutate(toxicity_value = str_replace_all(toxicity_value, "\\\xb5g", "μ"))



# # internal data
usethis::use_data(
  iarc_chem,
  iris_chem,
  internal = FALSE,
  overwrite = TRUE
)


