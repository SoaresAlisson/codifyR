#' collapse categories
#'
#' @description
#' given a dataframe with categories, it collapses the categories into one
#' line in regex pattern. It assumes the first column is the category and the
#' second is the terms and pattern do be collapsed/united into one single line.
#'
#' @param DF
#'
collapse_categories <- function(DF) {
  col_names <- colnames(DF)

  DF |>
    group_by(category = eval(sym(col_names[1]))) |>
    dplyr::summarise(items = paste(eval(sym(col_names[2])), collapse = "|"))
}
