# functions from package sto, for internal usage
# The functions was copied here to diminish the dependencies of another package

#' To easily paste and collapse chars objects into one string.
#' @description
#' A wrapper for glue::glue.
#' @noRd
#'
#' @examples
#' x <- 9+12
#' y <- "Lorem ipsum"
#' f('Number is: {x}, and the text is: "{y}"')
f <- glue::glue

#' Convert a string into a vector of elements.
#'
#' @description
#' Easily transform a character string into a vector of elements.
#' @param char character to be transformed
#' @param sep separator
#' @param wss whitespace substitution. Which character will be used in the end to be converted into white space
#' @param print if TRUE, will return a string that can be pasted in the console
#'
#' @noRd
#' @examples
#' "a b c d" |> s2v(r
#' # strips white spaces
#' "a b c     d" |> s2v()
#' "a b c\nd\te" |> s2v()
#' # And specifying the separator character:
#' "a|b|c|d e" |> s2v(sep = "\\|")
#' # To use the output verbatim as a string to copy and use in the code
#' "a b c d" |> s2v(print = TRUE)
s2v <- function(char, sep = " |\\n|\\t|\\r", wss = "_", print = FALSE) {
  vec <- char |>
    strsplit(sep) |>
    unlist() |>
    gsub2(" +", " ") |> # strip extra white spaces
    gsub2("[,;]", " ") |> # strip comma
    stringi::stri_remove_empty() |>
    gsub2("^ | $", "") |> # strip extra white spaces
    gsub2(wss, " ")

  if (!print) {
    return(vec)
  } else {
    vec |>
      paste(collapse = "', '") |>
      gsub2("^", "c('") |>
      gsub2("$", "')")
  }
}


