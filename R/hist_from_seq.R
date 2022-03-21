
#' The function sums counts of unique symbols found in the provided sequence and returns histogram.
#'
#' @importFrom magrittr %>%
#'
#' @param seq
#'
#' @return histogram
#' @export
#'
#' @examples
#'
#' hist_from_seq('ATTTTAACCGGCCCAA')
#'
#'
hist_from_seq <- function(seq){

  nucleotides <- seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(nucleotides, function(seq_pattern) stringr::str_count(string = seq, pattern =  seq_pattern)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["seq"]] <- rownames(counts)

  histogram <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = seq, y = Counts, fill = seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(histogram)
}
