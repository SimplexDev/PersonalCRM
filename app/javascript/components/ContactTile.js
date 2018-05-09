import React, { Component } from 'react';
import { Link } from 'react-router';

const ContactTile = (props) => {

  let first_name = props.first_name.toUpperCase()
  // let description = ''
  // if (props.description.length > 137) {
  //   description = `${props.description.substring(0, 137)}...`
  // } else {
  //   description = props.description
  // }

  return (
    <div className="columns small-12 medium-6 large-4 end">
      <Link className="contact-tile" to={`/contacts/${props.id}`}>
        <div className="content">
          <h4 className="first_name"> {first_name}</h4>
        </div>
      </Link>
    </div>
  );
}


export default ContactTile;
