
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
  # split the sequence into vector of characters, and get unique charactes
  nucleotides <- seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  # Count sum of unique characters in the sequence and create a data frame
  counts <- sapply(nucleotides, function(seq_pattern) stringr::str_count(string = seq, pattern =  seq_pattern)) %>%
    as.data.frame()

  # Assign sum of uniqe characters, and type of character, to counts column
  colnames(counts) <- c("Counts")
  counts[["seq"]] <- rownames(counts)

  # Plot histogram
  histogram <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = seq, y = Counts, fill = seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  #Return histogram
  return(histogram)
}

hist_from_seq('ATTTTAACCGGCCCAA')
