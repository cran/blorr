test_that("output from backward variable elimination is as expected", {
  model <- glm(
    honcomp ~ female + read + science + math + prog + socst,
    data = hsb2, family = binomial(link = "logit")
  )

  actual   <- blr_step_aic_backward(model)$predictors
  expected <- c("prog", "socst")

  expect_equal(actual, expected)
})

test_that("output from backward variable p elimination is as expected", {
  model <- glm(
    honcomp ~ female + read + science + math + prog + socst,
    data = hsb2, family = binomial(link = "logit")
  )

  actual   <- blr_step_p_backward(model)$removed
  expected <- c("prog", "socst")

  expect_equal(actual, expected)
})

