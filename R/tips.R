#' Remind of pasting

#' @author Jiaxiang Li
#'
#' @import cli

tips <- function(){
    cli::rule(left = "The text is already pasted on your system copyboard!", col = "red")
}
