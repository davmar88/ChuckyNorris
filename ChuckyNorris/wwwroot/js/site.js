
//we make constants for button and the paragraph that will help us animate the joke in HTML
const getjokebutton = document.querySelector('.jokecontainer .getjoke');
//const savejokebutton = document.querySelector('.jokecontainer .savejoke');
const jokeText = document.querySelector('.jokecontainer .thejoke');
const jokecategories = document.querySelector('.jokecontainer .categories');
const jokecreatedAt = document.querySelector('.jokecontainer .createdAt');
const jokeiconUrl = document.querySelector('.jokecontainer .iconUrl');
const jokeid = document.querySelector('.jokecontainer .jokeid');
const jokeupdatedAt = document.querySelector('.jokecontainer .updatedAt');
const jokeurl = document.querySelector('.jokecontainer .url');
const jokevalue = document.querySelector('.jokecontainer .thejoke');
//we add event listener as onclick to the button so we can manupilate the paragraph that will be the joke display.
//We will call the function getJoke and saveJoke when the buttons are clicked
getjokebutton.addEventListener('click', getJoke);
//savejokebutton.addEventListener('click', saveJoke);


//we will call the api url here
//we add async to function for await keyword to work otherwise we will be getting an error
async function getJoke() {

    //the fetch is an inbuilt javascript api for the browsers, we fetch the data from the url, and save it into jokeData
    //We add async to wait for the data being fetch before displaying it..
    const jokeData = await fetch('https://api.chucknorris.io/jokes/random', {
        headers: {
            'Accept': 'application/json'
        }
    });

    //Next we make the jokeData readable:
    const jokeObj = await jokeData.json();
    //to be able to see the data withing the json object, we access one of its properties, like value.
    //console.log(jokeObj.value);

    //we add the jokeObj values now to the HTML elements
    jokeText.innerHTML = jokeObj.value;
    jokecategories.innerHTML = jokeObj.categories;
    jokecreatedAt.innerHTML = jokeObj.created_at;
    jokeiconUrl.innerHTML = jokeObj.icon_url;
    jokeid.innerHTML = jokeObj.id;
    jokeupdatedAt.innerHTML = jokeObj.updated_at;
    jokeurl.innerHTML = jokeObj.url;
    jokevalue.innerHTML = jokeObj.value;
    
}

//my ajax object is not passing my values to the MVC controller for some weird reason
//function saveJoke() {
    
//    $.ajax({
//        type: "POST",
//        data: "{joketb:" + JSON.stringify(jokeObj)+ "}",
//        contentType: "application/json; charset=utf-8",
//        url: "/Home/GetData",
//        success: function (response) {
//            alert("joke:" + response.value);
//        },
//        error: function (response) {
//            alert(response.responseText);
//        }

//    });
//}




