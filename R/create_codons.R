#' Identify the codons in the RNA sequence
#'
#' @param RNA
#' insert the RNA sequence
#' @param start
#' specify the start of the sequence
#'
#' @return codons
#' @export
#'
#' @examples
#'
#' creates_codons("AUGCUUACGUCA")
#'
creates_codons <- function(RNA, start = 1){
  RNA_split <- nchar(RNA)
  codons <- substring(RNA,
                      first = seq(from = start, to = RNA_split-3+1, by = 3),
                      last = seq(from = 3+start-1, to = RNA_split, by = 3))
  return(codons)
}
