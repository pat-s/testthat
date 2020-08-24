
test_that("ok", {
  ret <- test_pkg_in_subprocess(test_path("test-parallel", "ok"))
  tdf <- as.data.frame(ret)
  expect_equal(tdf$failed, c(0,1,0))
  expect_equal(tdf$skipped, c(FALSE, FALSE, TRUE))
})
