#' Build an image in markdown
#'
#' This function helps users to paste image in markdown
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
#' m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png")
#' m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png",""The blog wallpaper")

m2 <-
    function(url="https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png",name=""){
        text <- glue::glue('![{name}]({url})')
        clipr::write_clip(text)
        cat(
            sep="\n"
            ,text
            ,cli::rule(left = "The text is already pasted on your system copyboard!", col = "red")
        )
    }
