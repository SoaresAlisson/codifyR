# html color names see https://www.w3schools.com/colors/colors_names.asp
#
#' A discrete color palette
color_palette <- c("#e9df5f", "#ffb3ba", "#ffdfba", "#baffc9", "#bae1ff", "#c9c9ff", "#f1cbff", "#e1f7d5", "#c3cb71", "#96ead7", "#ffbdbd", "#68c4af", "#feffa3", "#ffd4e5", "#ffffba")

#' A discrete color palette
color_palette2 <- c("yellow", "bisque", "palegreen", "salmon", "paleturquoise", "violet", "yellowgreen", "thistle", "sienna", "gold", "slateblue", "seagreen", "snow", "tan", "aquamarine", "coral", "brown")

#' A discrete color palette
color_palette3 <- c("DarkSeaGreen", "DarkTurquoise", "Gold", "GreenYellow", "HotPink", "LightGreen", "LightSeaGreen", "LightSalmon", "MediumAquaMarine", "Peru", "Wheat", "SteelBlue", "Orange", "Cyan")

#' A discrete color palette
color_palette4 <- c("#1F77B4", "#FF7F0E", "#2CA02C", "#D62728", "#9467BD", "#8C564B", "#E377C2", "#7F7F7F", "#BCBD22", "#17BECF")

# text color tagger
#
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
    gsub(
      x = _,
      paste0("(", pattern, ")"),
      # <span title="Hello world!", style="background-color:aquamarine">Hover this text to see the result.</span>
      paste0("<span title='", mouseover_txt, "', style='background-color:", color_txt, ";'>\\1</span>")
      # paste0('<span title="', mouseover_txt, '", style="background-color:', cor_txt, ';">\\1</span>')
    )
}



#' Create a discrete color column
#'
#' @description
#' For using with the dataframe with categories and pattern, this function
#' creates a column with colors.
#'
#' @param DF a dataframe with categories
#' @param colors. A vector of colors. It is possible to use the pre built
#' color_palette, color_palette2 or color_palette3 or to create your own, using
#' .html color names or hex colors.
#'
#' @export
#'
colorize <- function(df_categories, colors = color_palette) {
  # DF  <- categories
  DF <- df_categories
  DF_n_rows <- nrow(DF)
  length_colors <- length(colors)

  if (DF_n_rows > length_colors) {
    stop(
      "Color palette too short. Please increase its size or choose another palette. Lines in dataframe:",
      DF_n_rows, ". Number of discrete colors in palette",
      # substitute(colors),
      ": ", length_colors
    )
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
codify_df <- function(text, df_categories) {
  # categories <-  DF2[1:8,]
  df_categories <- df_categories |> as.data.frame()

  for (i in 1:nrow(df_categories)) {
    text <- text |>
      color_text(
        pattern = df_categories[i, 2],
        color_txt = df_categories[i, "color"],
        mouseover_txt = df_categories[i, 1]
      )
  }
  return(text)
}
