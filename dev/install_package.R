library(devtools)

# install a package from the source package
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

devtools::install("CMDMeasure", build_vignettes = TRUE)
