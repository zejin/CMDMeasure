#' Partial Martingale Difference Correlation
#'
#' \code{pmdc} measures conditional mean dependence of \code{Y} given \code{X} conditioning on \code{Z},
#' where each contains one variable (univariate) or more variables (multivariate).
#'
#' @param X A vector, matrix or data frame, where rows represent samples, and columns represent variables.
#' @param Y A vector, matrix or data frame, where rows represent samples, and columns represent variables.
#' @param Z A vector, matrix or data frame, where rows represent samples, and columns represent variables.
#'
#' @return \code{pmdc} returns the value of squared partial martingale difference correlation.
#'
#' @references Park, T., Shao, X., and Yao, S. (2015).
#'   Partial martingale difference correlation.
#'   Electronic Journal of Statistics, 9(1), 1492-1517.
#'   \url{http://dx.doi.org/10.1214/15-EJS1047}.
#'
#' @importFrom stats dist
#'
#' @include functions.R
#'
#' @export
#'
#' @examples
#' # X, Y, Z are 10 x 2 matrices with 10 samples and 2 variables
#' X <- matrix(rnorm(10 * 2), 10, 2)
#' Y <- matrix(rnorm(10 * 2), 10, 2)
#' Z <- matrix(rnorm(10 * 2), 10, 2)
#'
#' pmdc(X, Y, Z)

pmdc <- function(X, Y, Z) {
  X <- as.matrix(X)
  Y <- as.matrix(Y)
  Z <- as.matrix(Z)

  n <- nrow(X)
  if (n != nrow(Y) || n != nrow(Z)) {
    stop("The dimensions of X, Y, Z do not agree.")
  }

  p <- ncol(X)
  q <- ncol(Y)
  r <- ncol(Z)

  W <- cbind(X, Z)
  D <- u.center(W)
  A <- u.center(X)
  B <- u.center(0.5 * as.matrix(dist(Y))^2)
  C <- u.center(Z)
  beta <- u.inner(B, C) / u.inner(C, C)
  proj <- B - beta * C
  pmdd <- u.inner(proj, D)
  pmdc <- pmdd / sqrt(u.inner(proj, proj) * u.inner(D, D))
  # pmdc <- (mdc(W, Y) - mdc(Z, Y) * r.star(Z, W)) / sqrt(1 - mdc(Z, Y)^2)

  return(pmdc)
}




