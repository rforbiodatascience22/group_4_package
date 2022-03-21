#' DNA sequence generator
#'
#' @param seq_size
#'
#' @return complete_seq
#' @export
#'
#'@example generate_DNA(150)
DNA_seq <- function(seq_size){
  random_bases <- sample(c("A", "T", "G", "C"), size = seq_size, replace = TRUE)
  complete_seq <- paste0(random_bases, collapse = "")
  return(complete_seq)
}
