#' CMDMeasure: A package for mutual dependence measures via energy statistics
#'
#' The CMDMeasure package provides measures of conditional mean dependence and tests of conditional mean 
#' independence. 
#' 
#' @section Measuring conditional mean dependence:
#' The conditional mean dependence measures include: 
#' \itemize{ 
#'   \item conditional mean dependence of \code{Y} given \code{X}
#'   \itemize{
#'     \item martingale difference divergence
#'     \item martingale difference correlation
#'   }
#' }
#' \itemize{  
#'   \item conditional mean dependence of \code{Y} given \code{X} conditioning on \code{Z}
#'   \itemize{
#'     \item partial martingale difference divergence
#'     \item partial martingale difference correlation
#'   }
#' }
#'
#' @section Testing conditional mean independence:
#' The conditional mean independence tests include: 
#' \itemize{  
#'   \item conditional mean independence of \code{Y} given \code{X} conditioning on \code{Z}
#'   \itemize{
#'     \item martingale difference divergence under a linear assumption
#'     \item partial martingale difference divergence
#'   }
#' }
#' The conditional mean independence tests based on the conditional mean dependence measures are 
#' implemented as permutation tests.
#'
#' @name CMDMeasure-package
#'
#' @aliases CMDMeasure
#'
#' @docType package
#'
#' @title Conditional Mean Dependence Measures via Energy Statistics
#'
#' @author Ze Jin \email{zj58@cornell.edu},
#'   Shun Yao \email{shunyao2@illinois.edu}, \cr
#'   Xiaofeng Shao \email{xshao@illinois.edu},
#'   David S. Matteson \email{matteson@cornell.edu}

NULL 
