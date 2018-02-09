library(devtools)

# submit the source package to cran and record the time
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

system.time(devtools::release("CMDMeasure", check = FALSE))
