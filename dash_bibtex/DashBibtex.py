# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DashBibtex(Component):
    """A DashBibtex component.
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

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- bibtex (string; required):
    The BibTeX to be rendered to a citation.

- citation_style (string; default 'apa'):
    The style of the citation to be rendered.

- language (string; default 'en-US'):
    The language of the citation to be rendered."""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'dash_bibtex'
    _type = 'DashBibtex'
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, bibtex=Component.REQUIRED, citation_style=Component.UNDEFINED, language=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'bibtex', 'citation_style', 'language']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'bibtex', 'citation_style', 'language']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        for k in ['bibtex']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')

        super(DashBibtex, self).__init__(**args)
