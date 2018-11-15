
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/JiaxiangBU/add2md.svg?branch=master)](https://travis-ci.org/JiaxiangBU/add2md)
[![GitHub All
Releases](https://img.shields.io/github/downloads/JiaxiangBU/add2md/total.svg)](https://github.com/JiaxiangBU/add2md)

# add2md

The goal of add2md is to help R users to type markdown in `.Rmd`.

## Installation

You can install the released version of add2md from
[Github](https://github.com/JiaxiangBU/add2md) with:

``` r
devtools::install_github('JiaxiangBU/add2md')
```

``` r
library(add2md)
```

## Usage

``` r
m()
#> This is the helper for R users to use markdown.
#> ────────────────────────  Type m1('url') URL ────────────────────────
#> Input m1("url","name")
#> Output [name](url)
#> e.g. m1("https://github.com/JiaxiangBU/add2md/","add2md")
#> [add2md](https://github.com/JiaxiangBU/add2md/)
#> ──────────────────────  Type m2('url','name') Image ──────────────────────
#> Input m2("url","name")
#>  Output ![name](url)
#>  e.g. m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png","The blog wallpaper")
#>  ![The blog wallpaper](https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png)
#> ────────────────────────  Type m3('name') bold ────────────────────────
#> Input m3("name")
#>  Output **name**
#>  e.g. m3("Jiaxiang Li")
#>  **Jiaxiang Li**
```

``` r
m1("https://github.com/JiaxiangBU/add2md/","add2md")
#> [add2md](https://github.com/JiaxiangBU/add2md/)
#> ─ The text is already pasted on your system copyboard! ───────────────────────────────
```

``` r
m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png","The blog wallpaper")
#> ![The blog wallpaper](https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png)
#> ─ The text is already pasted on your system copyboard! ───────────────────────────────
```

``` r
m3("Jiaxiang Li")
#> **Jiaxiang Li**
#> ─ The text is already pasted on your system copyboard! ───────────────────────────────
```

    This is a summary title
    This is content like image, link and so on.
    It can be folded to help readers focus on someting important. 

In the console, call `m_detail()`, and paste on your document.

<details>

<summary>This is a summary title</summary>

This is content like image, link and so on. It can be folded to help
readers focus on someting important.

</details>

## Example

See the [vignettes](https://jiaxiangbu.github.io/add2md/articles/).
