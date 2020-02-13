
async function fetchProtectedData(authString) {
    const res = await fetch("/SlutprojektBackend/userRes/Check", {
        method: "POST",
        headers: {
            'Authorization': authString
        },
        data: {
            user: username,
            pass: password
            
        }
    });
    const data = await res.text();
    return data;
}