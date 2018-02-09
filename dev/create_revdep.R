library(devtools)

# set up a basic .travis.yml config file
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

devtools::use_revdep("CMDMeasure")
