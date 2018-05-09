import React from 'react';

const DescriptionText = (props) => {
  return (
    <div className="field">
      <label className="label">{props.label}</label>
        <textarea
          first_name={props.first_name}
          type='text'
          value={props.content}
          onChange={props.handlerFunction}
          size="30"
        />
    </div>
  );
}

export default DescriptionText;
