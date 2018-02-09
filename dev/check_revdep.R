library(devtools)

# check the downstream dependencies
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

devtools::revdep_check("CMDMeasure")