

function login() {

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    function signup(loggedIn) {
        const [loggedIn, setLoggedIn] = React.useState();


    }

    function onLogin() {





    }
    function basicAuth() {
        const auth = username;
        const userValue = authString.username;
        const passValue = authString.password;


    }

    async function fetchProtectedData(authString) {
        const res = await fetch("/protected", {
            method: "POST",
            headers: {
                'Authorization': authString
            }
        });
        const data = await res.text();
        return data;
    }
    if (loggedIn == false) {
        return (
            <div>

            </div>
        )


    } else {

    }
}