import React from 'react';

const ContactShow = (props) => {
  const link = `/contacts/${props.id}/edit`
  return(
    <div className="row collapse">
      <div className="columns small-12">
          <h2 className="page-header text-center">
            {props.full_name}
          </h2>

      </div>
    <div className="row collapse">
        <div className="columns medium-6">
          <h1> This is the ContactShow.js Component </h1>
            <button id="contact-edit-button" className="button"><a href={link}>Edit Contact Details</a></button>
          </div>
      </div>
    </div>
  )
}


export default ContactShow;
