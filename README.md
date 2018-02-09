# CMDMeasure

[![Travis-CI Build Status](https://travis-ci.org/zejin/CMDMeasure.svg?branch=master)](https://travis-ci.org/zejin/CMDMeasure.svg?branch=master)

## Overview

**CMDMeasure** provides measures of conditional mean dependence and tests of conditional mean independence. 

The two main parts are:
- measuring conditional mean dependence
- testing conditional mean independence

## Measuring conditional mean dependence

The conditional mean dependence measures include:
- asymmetric measure based on distance covariance
- symmetric measure based on distance covariance
- complete measure based on complete V-statistics
- simplified complete measure based on incomplete V-statistics
- asymmetric measure based on complete measure
- simplified asymmetric measure based on simplified complete measure
- symmetric measure based on complete measure
- simplified symmetric measure based on simplified complete measure

## Testing conditional mean independence

The conditional mean independence tests based on the conditional mean dependence measures are implemented as permutation tests.

## Installation

``` r
# Install the released version from CRAN
install.packages("CMDMeasure")

# Or the development version from GitHub:
# install.packages("devtools")
devtools::install_github("zejin/CMDMeasure")
```




