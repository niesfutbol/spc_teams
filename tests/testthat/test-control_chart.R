describe("Resort data", {
  it("The data are the same but in different order", {
    data <- tibble::tibble(a = seq(10), b = letters[1:10])
    obtained <- shuffle(data)
    expect_false(all(data[["a"]] == obtained[["a"]]))
  })
  it("All elements are the same", {
    data <- tibble::tibble(a = seq(10), b = letters[1:10])
    obtained <- shuffle(data)
    expect_true(all(obtained[["a"]] %in% data[["a"]]))
    expect_true(all(data[["a"]] %in% obtained[["a"]]))
  })
})

describe("Control chart", {
  it("From data calculate mean and sd", {
    data <- c(2.5, 3.5)
    control_chart <- Control_Chart$new(data)
    expect_equal(control_chart$mean, 3)
  })
})
