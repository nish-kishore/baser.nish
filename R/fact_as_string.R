#' A function to find large factorials
#'
#' This function allows you find the solutions of large factorials as a character
#' @param a the factorial you want to calculate
#' @keywords large factorial
#' @export
#' @examples
#' fact_as_string()

#multiplies all numbers from 100 to 1
fact_as_string <- function(a){
  return(Reduce(mult.int.as.string, as.character(a:1)))
}