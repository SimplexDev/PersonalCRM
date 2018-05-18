import React, { Component } from 'react';

const SearchForm = props => {
  let handleSearch = (event) => {
    props.handleSearch(event.target.value);
  };

  let Search = <span>
    <input
      type='text'
      onChange={handleSearch}
      placeholder="Search By Contact Name"
    />
  </span>;

  return(
    <div>
      {Search}
    </div>
  );
};

export default SearchForm;
