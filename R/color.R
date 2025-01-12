# see https://www.w3schools.com/colors/colors_names.asp
#' A discrete color palette
color_palette <- c("#1F77B4", "#FF7F0E", "#2CA02C", "#D62728", "#9467BD", "#8C564B", "#E377C2", "#7F7F7F", "#BCBD22", "#17BECF")

#' A discrete color palette
color_palette2 <- c("yellow", "bisque", "palegreen", "salmon", "paleturquoise", "violet", "yellowgreen", "thistle", "sienna", "gold", "slateblue", "seagreen", "snow", "tan", "aquamarine", "coral", "brown")

#' A discrete color palette
color_palette3 <- c("DarkSeaGreen", "DarkTurquoise", "Gold", "GreenYellow", "HotPink", "LightGreen", "LightSeaGreen", "LightSalmon", "MediumAquaMarine", "Peru", "Wheat", "SteelBlue", "Orange", "Cyan")

#' Create a discrete color column
#'
#' @description
#' For using with the dataframe with categories and pattern, this function
#' creates a column with colors.
#'
#' @param DF
#' @param colors. A vector of colors. It is possible to use the pre built
#' color_palette, color_palette2 or color_palette3 or to create your own, using
#' .html color names or hex colors.
#'
#' @export
#'
colorize <- function(DF, colors = color_palette) {
  # todo checar n de colunas?
  DF_n_rows <- nrow(DF)
  length_colors <- length(colors)

  if (DF_n_rows > length_colors) {
    stop("Color pallete too short. Please increase its size or choose another palette")
  } else {
    colors <- colors[1:nrow(DF)]

    DF |> dplyr::mutate(color = colors)
  }
}

#' Codify text with categories from a dataframe
#'
#' @description
#' given a text and a dataframe with categories, color the text with the categories.
#'
#' @param text text to be tagged
#' @param categories dataframe with categories, patterns and colors
#'
#' @export
codify_df <- function(text, categories) {
  # categories <-  DF2[1:8,]
  categories <- categories |> as.data.frame()

  for (i in 1:nrow(categories)) {
    # message(i, "|#|", DF2[i,2], "|#|", DF2[i,"color"], "|>|",  DF2[i,1])
    # message(" ")
    text <- text |>
      color_text(
        pattern = DF2[i, 2],
        color_txt = DF2[i, "color"],
        mouseover_txt = DF2[i, 1]
      )
  }
  return(text)
}
