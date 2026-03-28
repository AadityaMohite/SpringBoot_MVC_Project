# 🎓 Student Portal - Spring Boot MVC Project

## 📌 Project Overview
Student Portal is a web-based CRUD application developed using Spring Boot MVC architecture.  
It enables efficient management of student enrollments with secure role-based access control.

---

## 🚀 Features

### 🔐 Security Features
- Spring Security Integration  
- Role-Based Access Control (RBAC):
  - **ADMIN**
    - Add students  
    - Update student details  
    - Delete student records  
  - **USER**
    - View enrolled students only  
- Authentication & Authorization  
- Secured endpoints based on roles  

### 📚 Core Features
- Student Registration  
- Email Uniqueness Validation  
- Auto Course Duration Assignment  
- Update Student Details (Admin only)  
- Delete Student Record (Admin only)  
- View Enrolled Students (User & Admin)  
- DTO Pattern Implementation  
- Layered Architecture (Controller → Service → Repository)  

---

## 🛠️ Tech Stack

| Layer        | Technology Used                          |
|-------------|------------------------------------------|
| Backend     | Spring Boot, Spring MVC, Spring Security |
| ORM         | Spring Data JPA (Hibernate)              |
| Database    | MySQL                                    |
| Frontend    | JSP, CSS                                 |
| Architecture| MVC Architecture                         |

---

## 📂 Project Structure
src/
├── controller/
├── service/
├── repository/
├── dto/
├── entity/
└── config/ (Security Configuration)

---

## ⚙️ Concepts Implemented

- Dependency Injection (IoC)  
- Stereotype Annotations:
  - `@Controller`
  - `@Service`
  - `@Repository`
- `@Autowired`  
- Spring Security Configuration  
- Role-Based Authorization  
- JPA Repository Methods  
- Optional Handling  
- BeanUtils Property Copying  

---

## 🔐 Authorization Logic

| Role  | Permissions                     |
|------|---------------------------------|
| ADMIN | Add, Update, Delete Students    |
| USER  | View Enrolled Students Only     |

---

## 🗄️ Database

- MySQL Database  
- JPA Entity Mapping  
- Email field with unique constraint  
- Role-based user data (ADMIN / USER)  

---

## 📸 Screenshots

_Add your project screenshots here_

---

## ▶️ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/student-portal.git

  2. Configure MySQL in application.properties:
    spring.datasource.url=jdbc:mysql://localhost:3306/your_db
    spring.datasource.username=root
    spring.datasource.password=your_password

3 . Run the project:  mvn spring-boot:run
4. Open browser:http://localhost:8080

👨‍💻 Developed By

Aaditya Yuvraj Mohite
Computer Science Engineering Student


---

### Key Improvements Done
- Proper markdown formatting (GitHub standard)
- Clean section separation
- Table alignment fixed
- Code blocks added
- Professional structure (recruiter-friendly)

---

If you want next level upgrade, I can add:
- 📌 GitHub badges (build, version, etc.)
- 📌 Project demo section
- 📌 API documentation section (Swagger)
- 📌 Screenshots layout (grid style)

Just tell 👍
