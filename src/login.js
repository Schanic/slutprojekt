import React from 'react';

export function Login(props) {
    const [loggedIn, setLoggedIn] = React.useState(false);

    function onLoginAccount() {
        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;
        if (username === "j" && password === "j") {
            setLoggedIn(true);
            props.onLogin(true);
        }
        else {
            setLoggedIn(false);
            props.onLogin(false)
        }
    }

    function exitSession() {
        setLoggedIn(false);
        props.onlogin(false);
    }
    


    if (loggedIn === false) {
        return (
            <div>
                <button onClick={onLoginAccount}> Log in</button>
            </div>
        )


    } else {
        return (
            <button onClick={exitSession}></button>
        )
    }
}