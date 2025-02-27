# Doctor's Blogging Site

## Overview
Doctor's Blogging Site is a web-based application that allows doctors to register, log in, and create blog posts related to healthcare and medicine. The platform enables authenticated users to manage their blogs efficiently.

## Technologies Used
- **Backend**: Java Servlet, Hibernate
- **Frontend**: JSP, Bootstrap
- **Database**: MySQL
- **Server**: Apache Tomcat
- **ORM Framework**: Hibernate
- **Dependency Management**: JDBC (MySQL Connector)

## Features
- **User Authentication**: Doctors can register and log in securely.
- **Blog Management**: Users can create, view, and manage blog posts.
- **Data Persistence**: Utilizes Hibernate for ORM and MySQL for database storage.
- **Session Management**: Ensures secure handling of user sessions.
- **Bootstrap UI**: Enhances user experience with a responsive design.

## Project Structure
```
Doctors_Bloging
│── src
│   ├── main
│   │   ├── java
│   │   │   ├── com.DoctorsLogin
│   │   │   │   ├── DoctorDetailsServlet.java
│   │   │   │   ├── DoctorsLogin.java
│   │   │   │   ├── Login.java
│   │   │   │   ├── LoginDao.java
│   │   │   ├── com.DoctorsRegister
│   │   │   │   ├── DoctorsRegister.java
│   │   │   │   ├── Register.java
│   │   │   │   ├── RegisterDao.java
│   │   │   ├── com.Newblog
│   │   │   │   ├── BlogPost.java
│   │   │   │   ├── BlogPostDAO.java
│   │   │   │   ├── BlogPostServlet.java
│   │   │   │   ├── ViewBlogsServlet.java
│   │   ├── webapp
│   │   │   ├── META-INF
│   │   │   ├── WEB-INF
│   │   │   ├── createblog.jsp
│   │   │   ├── home.jsp
│   │   │   ├── index.jsp
│   │   │   ├── Login.jsp
│   │   │   ├── loginalert.jsp
│   │   │   ├── Register.jsp
│   │   │   ├── successmessage.jsp
│   │   │   ├── viewBlog.jsp
│── build
│── mysql-connector-j-9.1.0.jar
```

## Installation & Setup
### Prerequisites
- Install **JDK 8 or later**
- Install **Apache Tomcat 9**
- Install **MySQL Server**
- Install **Eclipse/IntelliJ IDEA** (Optional for development)

### Steps to Run
1. Clone the repository:
   ```sh
   git clone https://github.com/kramprakash2005/Doctors-Blogging-Site.git
   ```
2. Configure MySQL Database:
   - Create a database `doctors_blog`.
   - Update database configurations in `hibernate.cfg.xml`.
3. Import the project into Eclipse or IntelliJ.
4. Add MySQL Connector JAR to the project.
5. Deploy on Apache Tomcat and start the server.
6. Access the application at `http://localhost:8080/Doctors_Bloging`.


