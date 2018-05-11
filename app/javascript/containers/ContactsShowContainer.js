import React, { Component } from 'react';
import ContactShow from "../components/ContactShow"
import NotesShowContainer from "./NotesShowContainer"
import NoteFormContainer from "./NoteFormContainer"

class ContactsShowContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      contact:  {},
      notes: [],
      user_notes: []
    }
    this.addNewNote = this.addNewNote.bind(this)
  }

  addNewNote(submission) {
    event.preventDefault();
    fetch(`/api/v1/contacts/${this.state.contact.id}/notes.json`, {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(submission),
      headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(note => {
      let allNotes = this.state.notes
      this.setState({
        notes: allNotes.concat(note)
      })
    })
    .catch(error => console.error(`Error in fetch (submitting new note): ${error.message}`))
  }

  componentDidMount() {
    let contactId = this.props.params.id

    fetch(`/api/v1/contacts/${contactId}`, {
      credentials: 'same-origin'
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
          throw(error);
        }
      })
    .then(response => response.json())
    .then(contact => {
      this.setState ({
        contact: contact,
        notes: contact.notes,
        user_notes: contact.user_notes
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))

  }



  render() {

    return(
      <div className="row">
        <div className="columns medium-11 medium-centered">

            <ContactShow
              key={this.state.contact.id}
              id={this.state.contact.id}
              first_name={this.state.contact.first_name}
              last_name={this.state.contact.last_name}
              full_name={this.state.contact.full_name}
              email={this.state.contact.email}
              company={this.state.contact.company}
              past_company={this.state.contact.past_company}
              industry={this.state.contact.industry}
              phone_number={this.state.contact.phone_number}
              how_met={this.state.contact.how_met}
              last_contacted={this.state.contact.last_contacted}
              follow_up={this.state.contact.follow_up}
              birthday={this.state.contact.birthday}
              family_details={this.state.contact.family_details}
              location={this.state.contact.location}
            />

            <div>
              <NotesShowContainer
                key={this.state.contact.id}
                id={this.state.contact.id}
                notes={this.state.notes}
              />
            </div>
            <div>
              <NoteFormContainer
                addNewNote={this.addNewNote}
                contact={this.props.params}
              />
            </div>
        </div>
      </div>
    )
  }
}

export default ContactsShowContainer;
