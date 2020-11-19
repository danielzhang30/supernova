import React from 'react';
import './AutoCompleteText.css'

export default class AutoCompleteText extends React.Component {
    constructor (props) {
        super(props);
        this.items = [
            "apple",
            "apple store",
            "amazon",
            "apple stock",
            "amazon delivery",
            "best buy",
            "bank of america",
            "software",
            "software engineering",
            "software architecture",
            "software architecture design",
            "software system",
            "software architecture class",
            "software architecture diagram",
            "software architecture pattern",
            "software architect",
            "software architecture books",
            "software architecture tools",
            "software architecture examples",
        ];
        this.state = {
            suggestions: [],
            text: '',
        };
    }

    onTextChanged = (e) => {
        const value = e.target.value
        let suggestions = [];
        if (value.length > 0) {
            const regex = new RegExp(`^${value}`, 'i');
            suggestions = this.items.sort().filter(v => regex.test(v));
        }
        this.setState(() => ({suggestions, text: value}));
        
    }

    suggestionSelected (value) {
        this.setState(() => ({
            text: value,
            suggestions: [],
        }))
    }

    renderSuggestions () {
        const { suggestions } = this.state;
        if (suggestions.length === 0) {
            return null;
        }
        return (
            <ul>
                {suggestions.map((item) => <li onClick={() => this.suggestionSelected(item)}>{item}</li>)}
            </ul> 
        )
    }

    render () {
        const { text } = this.state;
        return(
            <div className="AutoCompleteText">
                <input value={text} onChange={this.onTextChanged} type="text" placeholder="Enter your search here"/>
                {this.renderSuggestions()}
            </div>
        )
    }

}