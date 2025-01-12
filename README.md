
<!-- README.md is generated from README.Rmd. Please edit that file -->

# codifyR - coding text to qualitative analysis

<!-- badges: start -->

![R
package](https://img.shields.io/badge/r-%23276DC3.svg?style=for-the-badge&logo=r&logoColor=white)
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

The goal of codifyR is to tag text with categories.

<figure>
<img src="./vignettes/sotu_trump_ex2.png"
alt="Exemple of text codified with {codifyR}" />
<figcaption aria-hidden="true">Exemple of text codified with
{codifyR}</figcaption>
</figure>

## Installation

You can install the development version of codifyR like so:

Option 1: using
[devtools](https://devtools.r-lib.org/reference/install.html)

``` r
# install.packages("devtools")
devtools::install_github("SoaresAlisson/codifyR")
```

``` r
# install.packages("pak")
pak::pak("SoaresAlisson/txtnet")
```

Option 2: install using
[{pak}](https://pak.r-lib.org/reference/pkg_install.html) package

``` r
# install.packages("pak")
pak::pkg_install("SoaresAlisson/txtnet")
```

See the vignettes and function references at the [web page of the
package](https://soaresalisson.github.io/codifyR/)

## TODO - Future improvements

- Use dataframe or list object as input to the text tagger
- import yaml file with dictionary of terms
- option do add a brief quantitative description of the categories and
  words marked in two options: in the html coded text or in a separated
  file.
- Maybe to make easier to pickup a color
- a live render with a shiny app
- integrate with NER of SpacyR
- Use Large Language Model, probably with {rollama}, helping to codify
  text.
