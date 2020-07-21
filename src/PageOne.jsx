import React from 'react';
import { Link } from 'react-router-dom'

import techImg from './assets/imgs/tech.jpg'

function PageOne() {
  return (
    <div>
      <h1>Page One</h1>
      <Link to="/two">page two</Link>
      <br/>
      <br/>
      <img src={techImg} alt="Tech"/>
    </div>
  );
}

export default PageOne;