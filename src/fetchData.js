
async function fetchProtectedData(authString) {
    const res = await fetch("/SlutprojektBackend/resources/?????");
    let data = await Response.json();
    return data;

    /*
        method: "POST",
        headers: {
            'Authorization': authString
        },
        data: {
            user: username,
            pass: password
            
        }
    );*/
    const data = await res.text();
    return data;
}