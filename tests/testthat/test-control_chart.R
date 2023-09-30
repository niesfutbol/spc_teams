describe("Resort data", {
  it("The data are the same but in different order", {
    data <- seq(10)
    obtained <- shuffle(data)
    expect_false(all(data == obtained))
  })
})