import React from 'react';

export function Login(loggedIn) {

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    function signup(value) {
        const [loggedIn, setLoggedIn] = React.useState();


    }

    function onLogin() {

    }
    function basicAuth(authString) {
        //const auth = username;
        const userValue = authString.username;
        const passValue = authString.password;


    }


    if (loggedIn == false) {
        return (
            <div>

            </div>
        )


    }
}