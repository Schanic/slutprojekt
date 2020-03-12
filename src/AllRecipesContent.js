import { FetchAllRecipes } from "./FetchAllRecipes.js"
import React from "react";
import "./AllRecipesContent.css";

export function DisplayAllRecipe(props) {
    const [data, setData] = React.useState();
    React.useEffect(() => {
        recieveData();

    }, []);
    let content = null;

    async function recieveData() {
        const recieve = await FetchAllRecipes();
        setData(recieve);
    }

    if (data) {
    const rows = data.map(recipes => <div className="column is-one-third" key={recipes.id}><img src="https://www.max.se/contentassets/f8a8b5bbd37a43b59376604b291c8dea/product_gdl-smokey-chipotle-chicken-mal2.jpg"></img>{recipes.name}</div>)
        content = <div className="columns is-multiline">{rows}</div>
    } else{
        console.log("Error something AllRecipesContent.js")
    }

    return content
}