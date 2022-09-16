args <- commandArgs(trailingOnly = TRUE)

options(styler.colored_print.vertical = FALSE)

styler::style_text(args)