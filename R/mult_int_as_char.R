#' A function multiply integers represeted as characters
#'
#' This function allows you multiply large numbers
##' @param a integers must be in character format
#' @param b integer must in in character format
#' @keywords multiply large numbers
#' @export
#' @examples
#' mult_int_as_char()

#evaluate installed packages and install if needed before execution
mult_int_as_char <- function(a,b){
  #multiplying is just adding a bunch of times :) 
  #Reduce function recursively applies a function with two arguments
  #to a list or vector, here i've just created a vector of the first
  #number the repeated the second number times
  return(Reduce(add_int_as_char, rep(a,b)))
}