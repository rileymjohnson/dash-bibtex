# AUTO GENERATED FILE - DO NOT EDIT

export ''_dashbibtex

"""
    ''_dashbibtex(;kwargs...)

A DashBibtex component.
DashBibtex is a component for rendering BibTeX.
It accepts the BibTeX string with the
property `bibtex`. It selects the language
of the citation with the `language` property.
The available languages are 'en-US', 'es-ES',
'de-DE', 'fr-FR', and 'nl-NL'. The format of
the citation is selected using the `citation_style`
property. The available citation styles are 'apa',
'vancouver', 'harvard1', and 'bibtex'. If 'bibtex'
is selected, raw BibTeX will be rendered.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `bibtex` (String; required): The BibTeX to be rendered to a citation.
- `citation_style` (String; optional): The style of the citation to be rendered.
- `language` (String; optional): The language of the citation to be rendered.
"""
function ''_dashbibtex(; kwargs...)
        available_props = Symbol[:id, :bibtex, :citation_style, :language]
        wild_props = Symbol[]
        return Component("''_dashbibtex", "DashBibtex", "dash_bibtex", available_props, wild_props; kwargs...)
end

