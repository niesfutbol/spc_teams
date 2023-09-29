xg_rolling_mean <- function(league) {
  metric <- "xG"
  metric_rolling_mean(league, metric)
}

ppda_rolling_mean <- function(league) {
  metric <- "PPDA"
  metric_rolling_mean(league, metric)
}

metric_rolling_mean <- function(league, metric) {
  league[[metric]] |>
    RcppRoll::roll_mean(4)
}
