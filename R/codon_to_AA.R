#' Translation to Aminoacid sequence
#'
#' @param codons
#'
#' @return AA_seq
#' @export
#'
#' @examples
#' codon_to_AA("UAG")
#' codon_to_AA(c("UUU","GAA"))
codon_to_AA <- function(codons){
  AA_seq <- paste0(codon_table[codons], collapse = "")
  return(AA_seq)
}
