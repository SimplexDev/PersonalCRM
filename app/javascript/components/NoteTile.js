import React, { Component } from 'react';

const NoteTile = (props) => {

  let date = props.created_at
  return (
    <div className="column small-12 medium-12 large-12 end">
      <div className="row collapse">
          <div className="columns medium-6">
              <div className="content panel">
                <div className="contact-tile">
                  <blockquote>{props.comment}</blockquote>
                </div>
              </div>
            </div>
          </div>
        </div>
  )
}

export default NoteTile;
