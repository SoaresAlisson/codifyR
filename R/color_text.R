

# text color tagger
# @description
#' Giving a text, tags text with colors using a text pattern
#'
#' @param text text to be tagged
#' @param pattern text pattern to be tagged
#' @param color_txt color to be tagged
#' 
#' @export
color_text <- function(text, pattern, color_txt = "yellow", mouseover_txt = "CodifyR") {
  text |>
    gsub(x=_,
      paste0("(", pattern, ")"),
      # <span title="Hello world!", style="background-color:aquamarine">Hover this text to see the result.</span>
      paste0("<span title='", mouseover_txt,"', style='background-color:", color_txt, ";'>\\1</span>")
      # paste0('<span title="', mouseover_txt, '", style="background-color:', cor_txt, ';">\\1</span>')
    )
}

