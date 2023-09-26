xg_rolling_mean <- function(league) {
  league$xG |>
    RcppRoll::roll_mean(4)
}