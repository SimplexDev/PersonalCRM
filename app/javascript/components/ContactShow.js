import React from 'react';

const ContactShow = (props) => {

  return(
    <div className="row collapse">
      <div className="columns small-12">
          <h2 className="page-header text-center">
            {props.full_name}
          </h2>
      </div>
    <div className="row collapse">
        <div className="columns medium-6">
            <div className="content panel">
              <div className="contact-tile">
                <a href={`/contacts/${props.id}/edit`}>Edit Contact</a><p/>
                <h6>Email: {props.email}</h6>
                <h6>Current Company: {props.company}</h6>
                <h6>Past Company: {props.past_company}</h6>
                <h6>Industry: {props.industry}</h6>
                <h6>Phone: {props.phone_number}</h6>
                <h6>Birthday: {props.birthday}</h6>
                <h6>How did we meet: {props.how_met}</h6>
                <h6>Current location: {props.location}</h6>
                <h6>Last Contacted: {props.last_contacted}</h6>
                <h6>Follow Up: {props.follow_up}</h6>
              </div>
            </div>
          </div>
      </div>
    </div>
  )
}


export default ContactShow;
