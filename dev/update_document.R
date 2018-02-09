library(devtools)

# generate documents in .Rd from comments
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

devtools::document("CMDMeasure")
cat('useDynLib(CMDMeasure, .registration = TRUE)', 
    file = 'CMDMeasure/NAMESPACE', append = TRUE)

