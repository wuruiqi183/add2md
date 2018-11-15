#' Build a url in markdown
#'
#' This function helps users to paste url in markdown
#'
#' @param url Character.
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
#' m1("https://github.com/JiaxiangBU/add2md/")
#' m1("https://github.com/JiaxiangBU/add2md/","add2md")

m1 <-
function(url="https://github.com/JiaxiangBU/add2md/",name=""){
    text <- glue::glue('[{name}]({url})')
    clipr::write_clip(text)
    cat(
        sep="\n"
        ,text
        ,cli::rule(left = "The text is already pasted on your system copyboard!", col = "red")
    )
}
