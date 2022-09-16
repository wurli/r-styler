# r-styler
This is a [Quarto
filter](https://quarto.org/docs/extensions/distributing.html) which
applies
[`styler::style_text()`](https://styler.r-lib.org/reference/style_text.html)
to R code blocks in a Quarto document. This is currently very basic and
was mainly created as a learning exercise.

## Installation
To install this extension in your current directory (or into the Quarto project 
that you're currently working in), use the following command:

```
quarto install extension wurli/r-styler
```

## Usage
To apply automatic styling to R code chunks in your Quarto document, use 
the `filters` field in the document's YAML frontmatter like so:

````

---
title: R-Styler Example
filters:
   - r-styler
---

Here's some nicely formatted code:

```{r}
library(  dplyr , warn.conf = FALSE)

starwars |> filter( height > 100,
  species == "Human") |>
   select(1 : 3)
```
````

The above code will be styled according to the [tidyverse style guide](https://style.tidyverse.org)
to appear as follows:

```
library(dplyr, warn.conf = FALSE)

starwars |>
  filter(
    height > 100,
    species == "Human"
  ) |>
  select(1:3)
```

## Why use this filter?
You shouldn't - it's much better to write well-styled code in the first place.
However you may want to use it to render *someone else's* poorly-styled 
document.