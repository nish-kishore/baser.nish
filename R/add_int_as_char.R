#' A function to add integers as strings
#'
#' This function allows you to add two integers reprsented as characters
#' @param a integers must be in character format
#' @param b integer must in in character format
#' @keywords add large numbers
#' @export
#' @examples
#' add_int_as_char()

#add two integers that are represented as strings
add_int_as_char <- function(a,b){
  #calculate the larger of the two numbers
  max_char <- max(nchar(a),nchar(b))
  #pad the left with 0's for numbers that have less characters
  if(nchar(a)<max_char){
    diff <- max_char - nchar(a)
    a <- paste0(paste(rep("0",diff),sep="",collapse = ""),a)
  }
  if(nchar(b)<max_char){
    diff <- max_char - nchar(b)
    b <- paste0(paste(rep("0",diff),sep="",collapse = ""),b)
  }
  #initate vector to capture result
  out <- vector(mode="character", length=max_char)
  #initate object to hold the remained from each addition that is over a character
  remainder <- "0"
  
  #iterate through the two numbers starting at the right side
  #and working back, adding the two numbers plus the previous remainder
  for(i in max_char:1){
    x<-as.integer(substr(a,i,i))+as.integer(substr(b,i,i))+as.integer(remainder)
    x <- as.character(x)
    remainder<-"0"
    #capturing remainders if the nchar is over 1
    if(nchar(x)>1){
      remainder <- substr(x,1,1)
      out[i] <- substr(x,2,2)
    }else{
      out[i] <- substr(x,1,1)
    }
  }
  #for final number if the nchar increases, it adds the remainder
  #to the left side of the string
  if(i==1 & remainder != "0"){
    out <- paste0(remainder, paste(out,sep="",collapse=""))
  }else{
    out <- paste(out, sep="",collapse = "")
  }
  return(out)
}