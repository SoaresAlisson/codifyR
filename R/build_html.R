
#' build html page from pure text
#'
#' @description
#' build html page from pure text. It must be supplied a text, generally from color_text() function.
#' It is possible to supply also the title of the page that will be shown in web browser. 
#'
#' @param text text to be tagged
#' @param title_page title of the page
#'
#' @export
build_html <- function(text, title_page = "codifyR") {
tex_init <- f('<!DOCTYPE html>
<html>
<head>
<title>{title_page}</title>
</head>
<body>')

tex_end <- r"(
</body>
</html>)"

c(tex_init, text, tex_end)
}
