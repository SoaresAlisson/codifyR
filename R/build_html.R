
#' build html page from pure text
#'
#' @description
#' build html page from pure text. It must be supplied a text, generally from color_text() function.
#' It is possible to supply also the title of the page that will be shown in web browser. 
#'
#' @param text text to be tagged
#' @param title_page title of the page
#' @param name name of the .html file. If empty, it returns the html code.
#'
#' @export
build_html <- function(text, title_page = "codifyR", name = NA) {
  tex_init <- f('<!DOCTYPE html><html><head><title>{title_page}</title></head><body>')

  tex_end <- r"( </body></html>)"

  html_page <- c(tex_init, text, tex_end)

  if( is.na( name) ){
    html_page 
  } else{
    name <- gsub(".html$", "",  name)
    writeLines(html_page , paste0(name, ".html"))
  } 
}
