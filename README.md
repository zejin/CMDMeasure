# CMDMeasure

[![Travis-CI Build Status](https://travis-ci.org/zejin/CMDMeasure.svg?branch=master)](https://travis-ci.org/zejin/CMDMeasure.svg?branch=master)

## Overview

**CMDMeasure** provides measures of conditional mean dependence and tests of conditional mean independence. 

The two main parts are:
- measuring conditional mean dependence
- testing conditional mean independence

## Measuring conditional mean dependence

The conditional mean dependence measures include:
- conditional mean dependence of Y given X
  - martingale difference divergence
  - martingale difference correlation
- conditional mean dependence of Y given X conditioning on Z
  - partial martingale difference divergence
  - partial martingale difference correlation

## Testing conditional mean independence

The conditional mean independence tests include:
- conditional mean independence of Y given X conditioning on Z
  - martingale difference divergence under a linear assumption
  - partial martingale difference divergence

The conditional mean independence tests based on the conditional mean dependence measures are implemented as permutation tests.

## Installation

``` r
# Install the released version from CRAN
install.packages("CMDMeasure")

# Or the development version from GitHub:
# install.packages("devtools")
devtools::install_github("zejin/CMDMeasure")
```




