function getWeather() {
  const locationInput = document.getElementById("location").value;

  // Perform Ajax call to Open Weather Map API
  fetch(
    `https://api.openweathermap.org/data/2.5/weather?q=${locationInput}&appid=4175f7160869c7f07bddc3b19a376930&units=metric`
  )
    .then((response) => response.json())
    .then((data) => {
      // Display weather results
      displayWeatherResults(data);

      // Call PHP script to insert data into the database
      insertWeatherData(locationInput, data);

      // Call PHP script to retrieve and display previous results
      getWeatherHistory(locationInput);
    })
    .catch((error) => {
      console.error("Error:", error);
    });
}

function displayWeatherResults(data) {
  const weatherResultsDiv = document.getElementById("weather-results");
  const weatherDescription = data.weather[0].description;
  console.log(data.weather[0].description);
  weatherResultsDiv.innerHTML = `<p>Temperature: ${data.main.temp} °C</p>
  <p>Description: <img src="http://openweathermap.org/img/wn/${data.weather[0].icon}.png" alt="Weather Icon"> ${data.weather[0].description}</p>`;
  // Apply conditional statements to change background image based on weather conditions
  updateBackgroundImage(weatherDescription);
}

function insertWeatherData(location, data) {
  // Perform Ajax call to PHP script (insert.php) to insert data into the database
  const xhr = new XMLHttpRequest();
  xhr.open("POST", "insert.php", true);
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  xhr.send(
    `location=${location}&temperature=${data.main.temp}&weather=${data.weather[0].description}`
  );
}

function getWeatherHistory(location) {
  // Perform Ajax call to PHP script (history.php) to retrieve and display previous results
  const xhr = new XMLHttpRequest();
  xhr.open("GET", `history.php?location=${location}`, true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      const historyDiv = document.getElementById("history");
      historyDiv.innerHTML = xhr.responseText;
    }
  };
  xhr.send();
}
function updateBackgroundImage(weatherDescription) {
  const body = document.getElementById("weather-container");

  if (weatherDescription.includes("rain")) {
    body.style.backgroundImage =
      "url('images/Rainy_Weather_On_My_Village_(224889743).webp')";
  } else if (weatherDescription.includes("cloud")) {
    body.style.backgroundImage = "url('images/altocumulus.jpg')";
  } else if (weatherDescription.includes("clear")) {
    body.style.backgroundImage = "url('images/clearsky.webp')";
  } else if (weatherDescription.includes("haze")) {
    body.style.backgroundImage = "url('images/foggy-morning-street.webp')";
  } else if (weatherDescription.includes("snow")) {
    body.style.backgroundImage =
      "url('images/26holiday-weather01sub-superJumbo.webp')";
  } else {
    // Default background image for other conditions
    body.style.backgroundImage = "url('images/28.blue-sky-with-shiny-clouds-background_1017-23279.jpg')";
  }
}
