context("old-school expectations")

test_that("old school logical works", {
  expect_success(expect_that(TRUE, is_true()))
  expect_success(expect_that(FALSE, is_false()))
})

test_that("old school types still work", {
  expect_success(expect_that(1L, is_a("integer")))
  expect_success(expect_that(NULL, is_null()))
})

test_that("old school names still work", {
  expect_success(expect_that("a", has_names(NULL)))
})

test_that("old school comparisons still work", {
  expect_success(expect_that(10, is_less_than(11)))
  expect_failure(expect_that(10, is_more_than(11)))
})