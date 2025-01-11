
<!-- README.md is generated from README.Rmd. Please edit that file -->

# codifyR - coding text to qualitative analysis

<!-- badges: start -->
<!-- badges: end -->

**Package under development !!**

Coding text, annotate text or text tagging in qualitative analysis means

> “Coding means that we attach labels to segments of data that depict
> what each segment is about. Through coding, we raise analytic
> questions about our data from \[…\]. Coding distills data, sorts them,
> and gives us an analytic handle for making comparisons with other
> segments of data” (Charmaz, 2014:4).

> “Coding is the strategy that moves data from diffuse and messy text to
> organized ideas about what is going on” (Richards and Morse,
> 2013:167).

> “Coding is a core function in ATLAS.ti that lets you “tell” the
> software where the interesting things are in your data. … the main
> goal of categorizing your data is to tag things to define or organize
> them. In the process of categorization, we compare data segments and
> look for similarities. All similar elements can be grouped under the
> same name. By naming something, we conceptualize and frame it at the
> same time” (Friese, 2019). Font: [Atlas.ti
> manual](https://doc.atlasti.com/QuicktourWin.v9/Codes/CodingData.html)

The goal of codifyR is to tag tex with categories.

<figure>
<img src="./vignettes/sotu_trump_ex2.png"
alt="Exemple of text codified with {codifyR}" />
<figcaption aria-hidden="true">Exemple of text codified with
{codifyR}</figcaption>
</figure>

## Installation

You can install the development version of codifyR like so:

``` r
devtools::install_github("SoaresAlisson/codifyR")
```

See the vignettes

## TODO - Future improvements

- option do add a brief quantitative description of the category, and
  words marked in the coded text or in a separated file.
- Use vector and list object as input to the text tagger
- import yaml file with dictionary of terms
- Make easier to pickup a color
- a live render with a shiny app
- Use Large Language Model, probably with {rollama}, helping to codify
  text.
