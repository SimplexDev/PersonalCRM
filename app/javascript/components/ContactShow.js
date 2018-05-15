import React from 'react';

const ContactShow = (props) => {

  // let url;
  // if (props.photo !== undefined) {
  //   url = props.photo.url || "http://via.placeholder.com/350x150"
  // }


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
                <h6>Email: {props.email}</h6>
                <h6>Company: {props.company}</h6>
                <h6>Past Company: {props.past_company}</h6>
                <h6>Industry: {props.industry}</h6>
                <h6>Phone: {props.phone}</h6>
                <h6>Birthday: {props.birthday}</h6>
                <h6>How did we meet: {props.how_met}</h6>
                <h6>Current Location: {props.location}</h6>
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
