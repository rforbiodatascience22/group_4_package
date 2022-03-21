#' Translation of DNA into RNA
#'
#' @param DNA
#'
#' @return RNA
#' @export
#'
#' @examples
#'
#' T_to_U("ACTUATAUATAUATA")
#'
T_to_U <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
