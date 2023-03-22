import React, {Component} from 'react';
import {defaultProps, propTypes} from '../components/DashBibtex.react';
import Cite from 'citation-js';
import '@citation-js/plugin-bibtex'

import '../style.css'

/**
 * DashBibtex is a component for rendering BibTeX.
 * It accepts the BibTeX string with the
 * property `bibtex`. It selects the language
 * of the citation with the `language` property.
 * The available languages are 'en-US', 'es-ES',
 * 'de-DE', 'fr-FR', and 'nl-NL'. The format of
 * the citation is selected using the `citation_style`
 * property. The available citation styles are 'apa',
 * 'vancouver', 'harvard1', and 'bibtex'. If 'bibtex'
 * is selected, raw BibTeX will be rendered.
 */
export default class DashBibtex extends Component {
    render() {
        const {id, bibtex, citation_style, language} = this.props;

        const citation = new Cite(bibtex)

        const format = citation_style === 'bibtex' ? 'bibtex' : 'bibliography'

        const htmlCitation = citation.format(format, {
            template: citation_style,
            lang: language,
            format: 'html'
        })

        if (format === 'bibtex') {
            return (
                <p id={id}>
                    <code dangerouslySetInnerHTML={{ __html: htmlCitation }} />
                </p>
            );
        }

        return (
            <p id={id} dangerouslySetInnerHTML={{ __html: htmlCitation }} />
        );
    }
}


DashBibtex.defaultProps = defaultProps;
DashBibtex.propTypes = propTypes;