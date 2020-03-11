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
      
      <div className="grid-container">
        <Search></Search>
      </div>

        <div className="header">
          <div id="login"> <Login onlogin={onlogin}></Login></div>
          
      </div>

        <div className="content">
          <Content></Content>
     </div>

      
    </div>


  );
}
