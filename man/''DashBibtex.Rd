% Auto-generated: do not edit by hand
\name{''DashBibtex}

\alias{''DashBibtex}

\title{DashBibtex component}

\description{
DashBibtex is a component for rendering BibTeX. It accepts the BibTeX string with the property `bibtex`. It selects the language of the citation with the `language` property. The available languages are 'en-US', 'es-ES', 'de-DE', 'fr-FR', and 'nl-NL'. The format of the citation is selected using the `citation_style` property. The available citation styles are 'apa', 'vancouver', 'harvard1', and 'bibtex'. If 'bibtex' is selected, raw BibTeX will be rendered.
}

\usage{
''DashBibtex(id=NULL, bibtex=NULL, citation_style=NULL, language=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{bibtex}{Character. The BibTeX to be rendered to a citation.}

\item{citation_style}{Character. The style of the citation to be rendered.}

\item{language}{Character. The language of the citation to be rendered.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

