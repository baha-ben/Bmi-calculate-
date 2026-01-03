# BMI Calculator Project

## Project Description

BMI Calculator is a comprehensive web application for calculating and tracking Body Mass Index (BMI). The system allows users to calculate their BMI, view their history, and provides administrators with tools to manage all BMI records and view statistical distributions.

**Note:** Height must be entered in meters with decimal format (e.g., 1.75 for 175cm, not 175).

## Project Objective

The main objective of this project is to provide an easy-to-use platform for:
- Calculating Body Mass Index (BMI) based on weight and height
- Tracking BMI history for each user over time
- Providing visual analytics through charts and graphs
- Managing user accounts with role-based access control (User/Admin)
- Enabling administrators to monitor and manage all BMI records

## Technologies and Languages Used

### Backend
- PHP (Core language)
- MySQL (Database)
- PDO (PHP Data Objects for database connection)

### Frontend
- HTML5
- CSS3
- JavaScript
- Bootstrap 4.5.2
- Font Awesome 4.7.0
- Chart.js (for data visualization)

### Architecture Pattern
- MVC (Model-View-Controller)

## Key Features

### User Features
- User registration and authentication
- BMI calculation based on weight (kg) and height (m)
- View personal BMI history
- Interactive line chart showing BMI trends over time
- Automatic BMI status classification (Underweight, Normal weight, Overweight, Obesity)

### Admin Features
- Admin registration and authentication
- View all user BMI records in a table format
- Edit BMI records
- Delete BMI records
- View BMI category distribution across all users
- Interactive pie chart showing distribution of BMI categories

### Security Features
- Password hashing using PHP password_hash()
- Session management
- Role-based access control (User/Admin)
- Protected routes requiring authentication

## Database Structure

### Tables

#### users
- id (Primary Key, Auto Increment)
- username (Unique)
- password (Hashed)
- role (enum: 'user', 'admin')

#### bmi_records
- id (Primary Key, Auto Increment)
- user_id (Foreign Key references users.id)
- name
- weight (float)
- height (float)
- bmi (float)
- status (varchar)
- timestamp (timestamp)

## System Requirements

- XAMPP (or any Apache/MySQL stack)
- PHP 7.4 or higher
- MySQL 5.7 or higher
- Web Browser (Chrome, Firefox, Safari, Edge)

## Installation and Setup

### Step 1: Install XAMPP
Download and install XAMPP from the official website.

### Step 2: Clone or Download the Project
Place the project folder in the XAMPP htdocs directory:
```
C:/xampp/htdocs/bmi project/
```

### Step 3: Start XAMPP Services
- Start Apache
- Start MySQL

### Step 4: Create Database
1. Open phpMyAdmin by navigating to `http://localhost/phpmyadmin`
2. Create a new database named `bmi_db`
3. Import the `bmi_db.sql` file located in the project root directory

### Step 5: Configure Database Connection
Open `config/database.php` and verify the database credentials:
```php
private $host = "localhost";
private $db_name = "bmi_db";
private $username = "root";
private $password = "";
```

### Step 6: Access the Application
Navigate to the following URL in your web browser:
```
http://localhost/bmi%20project/public/signup.php
```

## Usage Guide

### For Users

#### Registration
1. Navigate to the signup page
2. Enter username and password
3. Click Sign Up button

#### Login
1. Navigate to the login page
2. Enter your credentials
3. Click Login button

#### Calculate BMI
1. After logging in, you will be redirected to the BMI calculation form
2. Enter your name, weight (kg), and height (m)
3. Click Calculate button
4. View your BMI result and status

#### View BMI History
1. Click on "BMI History" in the navigation bar
2. View your BMI records displayed in an interactive line chart

### For Admins

#### Admin Registration
1. Navigate to `http://localhost/bmi%20project/public/admin/signup.php`
2. Enter admin credentials
3. Click Sign Up button

#### Admin Login
1. Navigate to `http://localhost/bmi%20project/public/admin/login.php`
2. Enter admin credentials
3. Click Login button

#### View All Records
1. After logging in, admins can view all BMI records in a table format
2. Each record shows: ID, Name, Weight, Height, BMI, Status

#### Edit Records
1. Click the edit icon next to any record
2. Modify the values in the modal
3. Click Save changes

#### Delete Records
1. Click the delete icon next to any record
2. Confirm the deletion

#### View BMI Distribution
1. Navigate to "BMI History" from the admin panel
2. View the pie chart showing the distribution of BMI categories across all users

## BMI Categories

The system classifies BMI into four categories:

- Underweight: BMI < 18.5
- Normal weight: 18.5 <= BMI < 25
- Overweight: 25 <= BMI < 30
- Obesity: BMI >= 30

## File Descriptions

### Controllers
- **AuthController.php**: Handles user authentication (login, signup, logout) for both users and admins
- **BmiController.php**: Manages BMI calculations, history retrieval, record editing, and deletion

### Models
- **UserModel.php**: Handles database operations related to users
- **BmiModel.php**: Handles database operations related to BMI records

### Views
- **bmi_form.php**: User interface for BMI calculation
- **bmi_result.php**: Displays user BMI history as a line chart
- **admin_dashboard.php**: Admin interface for viewing and managing all BMI records
- **bmi_Admin_result.php**: Displays BMI category distribution as a pie chart

### Configuration
- **database.php**: Database connection configuration using PDO

## Notes

- The project uses MVC architecture for better code organization and maintainability
- All passwords are hashed using PHP's password_hash() function for security
- Sessions are used to manage user authentication and authorization
- The application includes separate interfaces for users and administrators
- Charts are rendered using Chart.js library for interactive data visualization

## Troubleshooting

### Database Connection Error
- Ensure XAMPP MySQL service is running
- Verify database credentials in `config/database.php`
- Ensure `bmi_db` database exists

### Page Not Found
- Check that the project folder name matches the URL
- Verify Apache service is running in XAMPP

### Login Issues
- Clear browser cache and cookies
- Ensure user exists in the database
- Verify password is entered correctly

## Future Enhancements

- Add BMI goal tracking
- Implement email notifications
- Add export functionality for BMI reports
- Multi-language support
- Mobile responsive improvements
- Add more detailed analytics and insights

Baha Taki Eddine Ben Abdallah 
