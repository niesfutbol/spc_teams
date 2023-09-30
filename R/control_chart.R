#' @export
shuffle <- function(data) {
  dplyr::sample_n(data, nrow(data))
}

#' @export
Control_Chart <- R6::R6Class("Control_Chart", list(
  mean = NULL,
  sd = NULL,
  initialize = function(data) {
    self$mean <- mean(data)
    self$sd <- sd(data)
  }
))
