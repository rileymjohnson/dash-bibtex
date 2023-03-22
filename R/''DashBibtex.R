# AUTO GENERATED FILE - DO NOT EDIT

#' @export
''DashBibtex <- function(id=NULL, bibtex=NULL, citation_style=NULL, language=NULL) {
    
    props <- list(id=id, bibtex=bibtex, citation_style=citation_style, language=language)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashBibtex',
        namespace = 'dash_bibtex',
        propNames = c('id', 'bibtex', 'citation_style', 'language'),
        package = 'dashBibtex'
        )

    structure(component, class = c('dash_component', 'list'))
}
