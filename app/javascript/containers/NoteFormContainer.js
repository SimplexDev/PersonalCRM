import React, { Component } from 'react';
import CommentText from "../components/CommentText"

class NoteFormContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      comment: '',
      errors: {}
    }
    this.handleCommentChange = this.handleCommentChange.bind(this)
    this.handleFormSubmit = this.handleFormSubmit.bind(this)
    this.handleClearForm = this.handleClearForm.bind(this)
    this.validateComment = this.validateComment.bind(this)
  }

  handleClearForm(event) {
    event.preventDefault()
    this.setState({
      comment: '',
      errors: {}
    })
  }

  handleFormSubmit(event) {
    event.preventDefault()

    let commentValidation = this.validateComment(this.state.comment)

    if (commentValidation) {
      let formPayload = {
        comment: this.state.comment,
        contact_id: this.props.contact
      }
    this.props.addNewNote(formPayload)
    this.handleClearForm(event)
    }
  }

  handleCommentChange(event) {
    this.validateComment(event.target.value)
    this.setState({ [event.target.name]: event.target.value })
  }

  validateComment(selection) {
    if (selection.trim() === '') {
      let newError = { commentStatus: 'You must enter a comment.' }
      this.setState({ errors: Object.assign(this.state.errors, newError) })
      return false
    } else {
      let errorState = this.state.errors
      delete errorState.commentStatus
      this.setState({ errors: errorState })
      return true
    }
  }

  render() {
    let errorDiv;
    let errorItems;

    if (Object.keys(this.state.errors).length > 0) {
      errorItems = Object.values(this.state.errors).map(error => {
        return(<li key={error}>{error}</li>)
      })
      errorDiv = <div className="callout alert">{errorItems}</div>
    }
    return (
      <div>
        {errorDiv}
        <h4>Add a new note!</h4>
        <div className="row">
          <div className="columns medium-6">
            <form className="callout" onSubmit={this.handleFormSubmit}>
                <CommentText
                  handlerFunction={this.handleCommentChange}
                  name='comment'
                  label='Comment'
                  content={this.state.comment}
                />
                <div className="button-group">
                  <input className="button small" type="submit" value="Submit" />&nbsp;
                  <button className="button clear small" onClick={this.handleClearForm}>Clear</button>
                </div>
              </form>
            </div>
          </div>

      </div>
    );
  }
}

export default NoteFormContainer;
