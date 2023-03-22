import dash_bibtex
from dash import Dash, html, dcc, Input, Output

bibtex = """
@article{knuth:1984,
  title={Literate Programming},
  author={Donald E. Knuth},
  journal={The Computer Journal},
  volume={27},
  number={2},
  pages={97--111},
  year={1984},
  publisher={Oxford University Press}
}
""".strip()

app = Dash(__name__)

app.layout = html.Div([
    dash_bibtex.DashBibtex(
        id='citation',
        bibtex=bibtex,
        citation_style='apa',
    ),
    dcc.Dropdown(
        id='citation-style',
        options=['apa', 'harvard1', 'vancouver', 'bibtex'],
        value='apa'
    )
])

app.clientside_callback(
    """
    s => s
    """,
    Output('citation', 'citation_style'),
    Input('citation-style', 'value'),
    prevent_initial_call=True
)


if __name__ == '__main__':
    app.run_server(debug=True)
