#' Translation to Aminoacid sequence
#'
#' @param codons
#'
#' @return AA_seq
#' @export
#'
#' @examples
#' translation("UAG")
#' translation(c("UUU","GAA"))
translation <- function(codons){
  AA_seq <- paste0(codon_table[codons], collapse = "")
  return(AA_seq)
}
