import React, { Component } from 'react';
import QuizApp from '../components/QuizTile'

class QuizIndexContainer extends Component {
  constructor(props){
    super(props)
      this.state = {
        contacts: [],
      }
    this.createQuizTile = this.createQuizTile.bind(this)
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

  createQuizTile(array) {
      let displayedQuizArray = array.map( (contact) =>{
        return (
          <QuizTile
            key={contact.id}
            id={contact.id}
            full_name={contact.full_name}
            company={contact.company}
            past_company={contact.past_company}
            industry={contact.industry}
            how_met={contact.how_met}
            location={contact.location}
            birthday={contact.birthday}
            family_notes={contact.family_notes}
            />
          )
        })
        return displayedQuizArray
    }

  render() {
    let displayedContacts;

    return (
      <div>
        <h1></h1>
          <div className="quizApp">
            <QuizApp

            />
          </div>
          <div className="row text-center">
        </div>
        <div className="row contact-container">
          {displayedQuizArray}
        </div>
      </div>
    );
  }
}

export default QuizIndexContainer;
