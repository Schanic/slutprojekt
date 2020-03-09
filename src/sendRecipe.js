
function sendRecipe() {
    const [buttonSend, setButtonS] = React.useState();
    
    const user_id = document.getElementById("").value;
    const description = document.getElementById("").value;
    const name = document.getElementById("").value;
    

    
    // GÖR EN TAGLIST ISTÄLLET WTF SAMMA FÖR INSTRUCTIONS OCH INGREDIENT
    let xhr = new XMLHttpRequest();
    const tagList = document.getElementById("").value;
    const url = "http://localhost:8080/resources/recipe/create";

    xhr.open("POST", url, true)
    xhr.setRequestHeader("Content-Type", "application/json");

    function send() {
        
        let data = JSON.stringify(
            {
                "id": NULL,
                "name": name,
                "recipe_descrip": description,
                "user_id": user_id,

                "Tag": [tagList],
                "instructions": [instructionsList],
                "ingredient": [ingredientList]
            }
        )



    }

    return (
        <div>
            <textarea></textarea>
            <textarea></textarea>
            <textarea></textarea>
            <button onClick={() => setButtonS(send())}></button>

        </div>
    )

}