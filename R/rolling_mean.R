xg_rolling_mean <- function(league) {
  league$xG |>
    RcppRoll::roll_mean(4)
}

ppda_rolling_mean <- function(league) {
  league$PPDA |>
    RcppRoll::roll_mean(4)
}
