import React, { Component } from 'react';
import { Link } from 'react-router';

const ContactTile = (props) => {

  let full_name = props.full_name

  // let comment = ''
  // if (props.comment.length > 137) {
  //   comment = `${props.comment.substring(0, 137)}...`
  // } else {
  //   comment = props.comment
  // }

  return (
    <div className="small-11 small-centered columns">
      <Link className="contact-tile" to={`/contacts/${props.id}`}>
        <div className="content panel">
          <h4 className="full_name"> {full_name}</h4>
        </div>
      </Link>
    </div>
  );
}


export default ContactTile;
