
async function fetchProtectedData(authString) {
    const res = await fetch(`/SlutprojektBackend/resources/recipe/wholeRecipe?id=${id}`);
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
}