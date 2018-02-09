# create the reference manual
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/Research/Conditional Mean Independence")
} else {
  setwd("~")
}

system("R CMD Rd2pdf CMDMeasure")
system("mv CMDMeasure.pdf CMDMeasure/dev/doc")
# system("R CMD check CMDMeasure")
