# Weather App with PHP, JavaScript, and MySQL

This project is a small web application that allows users to enter a location and retrieve the current weather information. The retrieved data is stored in a MySQL database, and users can also view the history of weather searches.

## Features

- **Search Weather:** Enter a location and get the current weather details using the Open Weather Map API.
- **Weather Icons:** Display weather icons based on the retrieved weather conditions.
- **Database Storage:** Store weather records in a MySQL database, including location, time, temperature, and weather description.
- **History:** View the history of previous weather searches, including temperature and weather type.

## Technologies Used

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP
- **Database:** MySQL
- **External API:** Open Weather Map API

## Project Structure

- `index.php`: Main page with the weather search functionality.
- `insert.php`: PHP script to insert weather data into the MySQL database.
- `history.php`: PHP script to retrieve and display weather search history.
- `styles.css`: CSS styles for the application.
- `images/`: Folder containing weather icons and background images.

## How to Use

1. Clone the repository to your local machine.
   ```bash
   git clone https://github.com/AtharvShinde2004/Weather-App.git
   ```

2. Set up your local server environment (e.g., MAMP, XAMPP).

3. Import the provided SQL dump file (`weather_app_database.sql`) into your MySQL database.

4. Update the Open Weather Map API key in the `index.php` file.

5. Access the application through your local server (e.g., http://localhost/your-weather-app/index.php).

## License

This project is licensed under the [MIT License](LICENSE).
