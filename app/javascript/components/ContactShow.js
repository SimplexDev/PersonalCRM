import React from 'react';

const ContactShow = (props) => {

  // let url;
  // if (props.photo !== undefined) {
  //   url = props.photo.url || "http://via.placeholder.com/350x150"
  // }
  //
  // let artist;
  //
  // if (props.artist === "" || props.artist === null || props.artist === undefined){
  //   artist = "Uncredited"
  // } else {
  //   artist = props.artist
  // }

  return(
    <div className="row collapse">
      <div className="columns small-12">
          <h2 className="page-header text-center">
            {props.first_name}
          </h2>
      </div>
    <div className="row collapse">
        <div className="columns medium-6">
          <h1> This is the ContactShow.js Component </h1>
          </div>
      </div>
    </div>
  )
}


export default ContactShow;
