library(devtools)

# create a test workflow
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

devtools::use_testthat("CMDMeasure")
