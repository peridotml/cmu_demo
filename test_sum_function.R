library(testthat)
source("sum_function.R")

test_that("sum_function returns x + y", {
  expect_equal(sum_function(0, 0), 0)
  expect_equal(sum_function(2, 2), 4)
})