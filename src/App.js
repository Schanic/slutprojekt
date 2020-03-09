import React from 'react';
import {Login} from './login';
import {Search} from './search';
import {Content} from './content';
import './App.css';

export default function App() {
  const [isloggedin, setisloggedin] = React.useState(false);

  function onlogin(value) {
    setisloggedin(value);

  }



  return (
    <div className="App">
      
      <div class="grid-container">
        <Search></Search>
      </div>

        <div class="header">
          <div id="login"> <Login onlogin={isloggedin}></Login></div>
          <Login></Login>
      </div>

        <div class="content">
          <Content></Content>
     </div>

      
    </div>


  );
}
