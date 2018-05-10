import React, { Component } from 'react';
import ContactTile from '../components/ContactTile';
import SearchApp from '../components/SearchApp'

class ContactsIndexContainer extends Component {
  constructor(props){
    super(props)
      this.state = {
        contacts: [],
        searchText: '',
        searchResults: [],
        count: 9
      }
    this.updateSearchResults = this.updateSearchResults.bind(this)
    this.showMoreResults = this.showMoreResults.bind(this)
    this.createContactTile = this.createContactTile.bind(this)
  }

  componentDidMount(){
    fetch('/api/v1/contacts.json', { credentials: 'same-origin' })
      .then(response => {
        if (response.ok) {;
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ contacts: body });
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  createContactTile(array) {

    let displayedContactsArray = array.map( (contact) =>{
      return (
        <ContactTile
          key={contact.id}
          id={contact.id}
          first_name={contact.first_name}
          last_name={contact.last_name}
          full_name={contact.full_name}
          email={contact.email}
          company={contact.company}
          past_company={contact.past_company}
          industry={contact.industry}
          how_met={contact.how_met}
          last_contacted={contact.last_contacted}
          follow_up={contact.follow_up}
        />
      )
    })
    return displayedContactsArray
  }

  showMoreResults(event) {
    event.preventDefault()

    let newCount = this.state.count + 9
    this.setState({
      count: newCount
    })
  }

  updateSearchResults(searchText) {
    let tempResults = []
    this.state.contacts.forEach((contact) => {
      if (contact.full_name.toLowerCase().includes(searchText.toLowerCase())) {
        tempResults.push(contact)
      }
    })

    let tempCount = this.state.count
    if (searchText.length === 1) {
      tempCount = 9
    }
    this.setState({
      searchText: searchText,
      searchResults: tempResults,
      count: tempCount
    })
  }

  render() {

    let displayedContacts;

    if (this.state.searchText === '') {
      displayedContacts = this.createContactTile(this.state.contacts).slice(0, this.state.count)
    } else {
      displayedContacts = this.createContactTile(this.state.searchResults).slice(0, this.state.count)
    }

    let showMoreButton;
    if (this.state.contacts != []) {
      if (displayedContacts.length === this.state.contacts.length || displayedContacts.length === this.state.searchResults.length) {
        showMoreButton = <div></div>
      } else {
        showMoreButton = <button id="show-more-button" className="button" onClick={this.showMoreResults}>Show More</button>
      }
    }


    return (
      <div>
        <h4> Personal Contact Relationship Manager</h4>
          <div>
            <SearchApp
              updateSearchResults={this.updateSearchResults}
            />
          </div>
          <div className="row text-center">
            <div className="column">
              <h4 className="site-mission">Find your Contacts</h4>
          </div>
        </div>
        <div className="row contact-container">
          {displayedContacts}
        </div>
        <div className="text-center">
          {showMoreButton}
        </div>
      </div>
    );
  }
}

export default ContactsIndexContainer;
