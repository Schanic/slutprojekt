
export async function FetchAllRecipes() {
    try {
        const url = await window.fetch("/SlutprojektBackend/resources/recipe/allRecipes");
        let data = await url.json();
        console.log(data);
        return data;
    } catch (error) {
        console.log("Error" + error)
    }
        
        
}