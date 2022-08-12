
#' Predict the Runoff (in ft^3)
#'
#' @param I fraction of the watershed that's impervious (unitless)
#' @param A area of the watershed in acres
#'
#' @return 3630 * Rd * Rv * A
#' @export
#'
#' @examples
#' predict_runoff(I = .5, A = 20)
predict_runoff <- function(I, A) {
  Rd = 1
  Rv = 0.05 + 0.9 * I
  return(3630 * Rd * Rv * A)
}