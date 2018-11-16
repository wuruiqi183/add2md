#' Bold your text in markdown
#'
#' This function helps users to paste bold text in markdown
#'
#' @param name Character.

#' @return Character.
#' @author Jiaxiang Li
#'
#' @import clipr
#' @import stringr
#' @import glue
#' @import cli
#' @export

m_detail <- function(){
    input <- clipr::read_clip()
    title <-
        input %>%
        .[1]
    content <-
        input %>%
        .[2:length(.)] %>%
        stringr::str_flatten(collapse = '\n')
    text <- glue::glue(
        "<details>
    <summary>{title}</summary>

    {content}

    </details>",title=title,content=content)
    clipr::write_clip(text)
    cat(
        sep="\n"
        ,text
        ,tips()
    )
}
