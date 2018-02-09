library(devtools)

# check the source package and record the time
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

system.time(devtools::build_win("CMDMeasure", version = "R-release"))
system.time(devtools::build_win("CMDMeasure", version = "R-devel"))