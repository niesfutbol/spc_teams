describe("Rolling mean", {
  it("First example: xG", {
    data <- tibble::tibble(xG = c(1, 2, 1, 2, 1))
    expected <- c(1.5, 1.5)
    obtained <- xg_rolling_mean(data)
    expect_equal(obtained, expected)
  })
  it("Example: PPDA", {
    data <- tibble::tibble(PPDA = c(1, 2, 3, 4, 5))
    expected <- c(2.5, 3.5)
    obtained <- ppda_rolling_mean(data)
    expect_equal(obtained, expected)
  })
})
