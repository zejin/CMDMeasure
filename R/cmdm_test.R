#' Mutual Dependence Measures
#'
#' \code{cmdm} measures mutual dependence of all components in \code{X},
#' where each component contains one variable (univariate) or more variables (multivariate).
#'
#' @param x A matrix or data frame, where rows represent samples, and columns represent variables.
#' @param y A matrix or data frame, where rows represent samples, and columns represent variables.
#'
#' @return \code{cmdm} returns a list including the following components:
#' \item{stat}{The value of the mutual dependence measure.}
#' \item{dist}{The distances between all components from all samples.}
#'
#' @references Shao, X., and Zhang, J. (2014).
#'   Martingale difference correlation and its use in high-dimensional variable screening.
#'   Journal of the American Statistical Association, 109(507), 1302-1318.
#'   \url{https://arxiv.org/abs/1709.02532}.
#' @references Park, T., Shao, X., and Yao, S. (2015).
#'   Partial martingale difference correlation.
#'   Electronic Journal of Statistics, 9(1), 1492-1517.
#'   \url{https://arxiv.org/abs/1709.02532}.    
#'
#' @include functions.R
#'    
#' @export
#'
#' @examples
#' # X, Y is a 10 x 3 matrix with 10 samples and 3 variables
#' X <- matrix(rnorm(10 * 3), 10, 3)
#' Y <- matrix(rnorm(10 * 3), 10, 3)
#
#' # assume X = (X1, X2) where X1 is 1-dim, X2 is 2-dim
#' MDD(X, Y)

MDD2 <- function(x, y) {
  x <- as.matrix(x)
  y <- as.matrix(y)
  
  n <- nrow(x)
  p <- ncol(x)
  q <- ncol(y)

  out <- .C("MDD_U",
            N = as.integer(n),
            P = as.integer(p),
            Q = as.integer(q),
            X = as.double(x),
            Y = as.double(y),
            O = as.double(numeric(1)),
            PACKAGE = "CMDMeasure")
  
  return(list(stat = out$O))
}
