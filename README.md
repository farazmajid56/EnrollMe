# EnrolMe

Enrollme is a university timetable management system that provides a range of features for students, faculty, and administrators. With EnrollMe, users can login or sign up, add and remove courses, rooms, and faculty, register for courses, assign, modify, delete, and view their timetables. Additionally, EnrollMe offers an automatic timetable generation feature based on registered and assigned courses, as well as a clashless timetable feature and the ability to view faculty, student, and room availability. Users can also create personalized timetables to fit their specific needs.

## Features

1. Login/Sign up as User / Student / Faculty / Admin
2. Delete Users (Admin only)
3. Add/Remove Courses
4. Add/Remove Faculty
5. Clashless TimeTable
6. Register Courses (Student Only)
7. Assign/Modify/Delete/View TimeTable
8. Make personalized TimeTable

## Requiements

- Java v.11 or higher
- Java sdk v.17 or higher
- intelliJ Idea (preferable)
- MySql Database

## Steps to run the Project

1. Open the project in intelliJ Idea
   1. It should automatically install dependencies. If not then go to pom.xml file and install Maven dependencies from right click menu
2. Make a database named "enrollme" in MySql database
3. Open the file "application.properties" in the path "src/main/resources"
4. Change the database username and password to your database username and password
5. Run the project from intelliJ Idea
6. Open the browser and type "localhost:8080" in the address bar
7. By default, the application comes with an allowed user (admin with employee id 1) in the database. First of all, register for admin with the id 1 and other required details
8. After registering, login with the same credentials
9. Now you can add other users and manage the timetable
