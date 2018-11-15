#' Bold your text in markdown
#'
#' This function helps users to paste bold text in markdown
#'
#' @param name Character.

#' @return Character.
#' @author Jiaxiang Li
#'
#' @import clipr
#' @import glue
#' @import cli
#' @export
#'
#' @examples
#' m3("Jiaxiang Li")

m3 <-
    function(name="Type something"){
        text <- glue::glue('**{name}**')
        clipr::write_clip(text)
        cat(
            sep="\n"
            ,text
            ,cli::rule(left = "The text is already pasted on your system copyboard!", col = "red")
        )
    }
