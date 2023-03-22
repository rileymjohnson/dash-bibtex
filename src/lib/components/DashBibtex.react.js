import React, {Component} from 'react';
import PropTypes from 'prop-types';
import { DashBibtex as RealComponent } from '../LazyLoader';

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
        return (
            <React.Suspense fallback={null}>
                <RealComponent {...this.props}/>
            </React.Suspense>
        );
    }
}

DashBibtex.defaultProps = {
    citation_style: 'apa',
    language: 'en-US'
};

DashBibtex.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * The BibTeX to be rendered to a citation.
     */
    bibtex: PropTypes.string.isRequired,

    /**
     * The style of the citation to be rendered.
     */
    citation_style: PropTypes.string,

    /**
     * The language of the citation to be rendered.
     */
    language: PropTypes.string,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};


export const defaultProps = DashBibtex.defaultProps;
export const propTypes = DashBibtex.propTypes;