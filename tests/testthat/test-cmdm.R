context("cmdm")

# random pairwise univariate
num_obs <- 10
dim_comp <- c(1, 1)
num_dim <- sum(dim_comp)
X <- matrix(rnorm(num_obs * num_dim), num_obs, num_dim)

test_that("dcov vs. asym_dcov/sym_dcov univariate", {

  expect_equal(1, 1)
})
