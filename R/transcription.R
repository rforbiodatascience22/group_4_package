#' Transcription of DNA into RNA
#'
#' @param DNA
#'
#' @return RNA
#' @export
#'
#' @examples
#'
#' transcription("ACTUATAUATAUATA")
#'
transcription <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
