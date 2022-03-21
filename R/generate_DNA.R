#' DNA sequence generator
#'
#' Creates a random DNA sequence of a size specified by the user.
#'
#' @param seq_size
#'
#' @return
#' @export
#'
#'
DNA_seq <- function(seq_size){
  random_bases <- sample(c("A", "T", "G", "C"), size = seq_size, replace = TRUE)
  complete_seq <- paste0(random_bases, collapse = "")
  return(complete_seq)
}
