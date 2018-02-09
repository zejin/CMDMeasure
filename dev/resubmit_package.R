library(devtools)

# resubmit the source package to cran 
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

submit_cran("CMDMeasure")
