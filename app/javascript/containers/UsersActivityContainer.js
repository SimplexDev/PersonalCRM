import React, { Component } from 'react';
import SpotTile from '../components/ContactTile';

class UsersActivityContainer extends Component {
  constructor(props){
    super(props)
    this.state = { contacts: [] }
  }

  componentDidMount(){

    fetch('/api/v1/users', {
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
      .then(body => {
        this.setState({ contacts: body });
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {

    let contacts = this.state.contacts.map( (contact) =>{
      return (
        <ContactTile
          key={contact.id}
          id={contact.id}
          full_name={contact.full_name}
        />
      )
    })

    return (
      <div className="row contact-container">
        <h1>Recent Activity</h1>
        {contacts}
      </div>
    );
  }
}

export default UsersActivityContainer;
