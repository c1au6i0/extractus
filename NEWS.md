
# extractox 0.1.1

* Fixed `extr_iris` extracts the correct number of chemicals with no repetition (#15}.
* Fixed `extr_comtox` works when a single `download_items` different than `DTXCID` is selected (#17).
* Feature: introduced `extr_ice_assay_names` to retrieve ice assay names  (#16).
* Feature: introduced `extr_monograph` to check if a substance is listed in WHO IARC monograph and return the details of it.
#19. *Breaking change*: note that now `extr_tox` runs also `extr_monograph` and so output one more dataframe.


# extractox 0.1.0

* Initial CRAN submission.
