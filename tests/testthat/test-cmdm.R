context("cmdm")

# random pairwise univariate
num_obs <- 10
num_comp <- 5
X <- matrix(rnorm(num_obs * num_comp), num_obs, num_comp)

test_that("univariate Y", {
  Y <- rnorm(num_obs)

  expect_equal(MDD(X, Y), MDD2(X, Y)$stat)
})

test_that("multivariate Y", {
  Y <- matrix(rnorm(num_obs * num_comp), num_obs, num_comp)

  expect_equal(MDD(X, Y), MDD2(X, Y)$stat)
})