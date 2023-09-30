#' @export
shuffle <- function(data) {
  dplyr::sample_n(data, nrow(data))
}
