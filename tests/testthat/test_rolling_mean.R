describe("Rolling mean", {
  it("First example", {
    data <- tibble::tibble(xG = c(1,2,1,2,1))
    expected <- c(1.5, 1.5)
    obtained <- xg_rolling_mean(data)
    expect_equal(obtained, expected)
  })
})