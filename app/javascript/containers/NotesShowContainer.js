import React, { Component } from 'react';
import NoteTile from "../components/NoteTile"

const NotesShowContainer = (props) => {

  let notes;
  if (props.notes) {
    notes = props.notes.map(note => {
      return(
        <div>
          <NoteTile
            key={note.id}
            id={note.id}
            comment={note.comment}
            user={note.user_id}
            created_at={note.created_at}
          />
        </div>
      )
    })
  } else {
    notes = "No Notes Yet"
  }

  return(
    <div>
      <h2 className="notes-header notes-container-line-break">Notes</h2>
      <div>
        {notes}
      </div>
    </div>
  )
}

export default NotesShowContainer;
