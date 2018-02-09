library(devtools)

# create an .Rproj file for an existing package
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

devtools::use_rstudio("CMDMeasure")
