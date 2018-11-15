#' Get Example of markdown
#'
#' This function shows three frequently used markdown and related built function.
#'
#' @return Text.
#' @author Jiaxiang Li
#'
#' @import glue
#' @import cli
#' @export
#'
#' @examples
#' m()

m <-
function(){
    cat(
        sep = "\n"
        ,glue::glue('This is the helper for R users to use markdown.')

        # m1
        ,cli::rule(center = " Type m1('url') URL", col = "red")
        ,glue::glue('Input m1("url","name")
             Output [name](url)
             e.g. m1("https://github.com/JiaxiangBU/add2md/","add2md")
             [add2md](https://github.com/JiaxiangBU/add2md/)
             ')

        # m2
        ,cli::rule(center = " Type m2('url','name') Image", col = "red")
        ,glue::glue('Input m2("url","name")
             Output ![name](url)
             e.g. m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png","The blog wallpaper")
             ![The blog wallpaper](https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png)
            ')

        # m3
        ,cli::rule(center = " Type m3('name') bold", col = "red")
        ,glue::glue('Input m3("name")
             Output **name**
             e.g. m3("Jiaxiang Li")
             **Jiaxiang Li**
            ')

    )

}
