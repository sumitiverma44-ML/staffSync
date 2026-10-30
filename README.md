# StaffSync - Modern Full Stack HR Management System (HRMS)

A modern, functional, professional HR Management System built using the **MERN** stack (MongoDB, Express.js, React.js, Node.js) with Bootstrap 5 and Chart.js.

Designed with a clean **Navy Blue, White, and Sky Blue** SaaS color palette, featuring interactive dashboard metrics, role-based access control (Admin, HR, Employee), employee directory CRUD operations, daily attendance clocking, leave management workflows, departments management, and company announcements.

---

## 🌟 Key Features

### 1. 🔐 Authentication & Role-Based Access Control (RBAC)
- **Three distinct roles**: `Admin`, `HR`, and `Employee`.
- Secure password hashing using **bcryptjs**.
- **JWT (JSON Web Token)** stateless authentication with authorization middleware.
- **1-Click Demo Login Buttons** on the login page for effortless testing between Admin, HR, and Employee roles.

### 2. 📊 Executive HR Dashboard
- **Real-Time KPI Cards**: Total Employees, Present Today, Absent Today, Pending Leave Requests.
- **Interactive Visualizations**:
  - Weekly Attendance Trend (Bar Chart via Chart.js).
  - Department Headcount Distribution (Doughnut Chart via Chart.js).
- **Recent Activities Feed**: Latest leave applications, new hires, and active announcements.
- **Quick Action Buttons**: Clock In/Out, Apply for Leave, Add Employee.

### 3. 👥 Employee Directory (Full CRUD)
- **Search & Filter**: Real-time search by name, email, designation, or ID; filter by Department and Status (Active, On Leave, Inactive).
- **View Toggle**: Switch seamlessly between **Table View** and **Card Grid View**.
- **Add & Edit Modal**: Input first/last name, work email, phone, designation, department, role, employment type, salary, address, and emergency contacts.
- **Employee Profile Modal**: Clean overview card with photo avatar, compensation, contact info, and status badges.
- **Delete Protection**: Secure employee removal with confirmation dialogues.

### 4. ⏱️ Attendance Management
- **One-Click Daily Punch**: Real-time **Clock In** and **Clock Out** button directly in the top navbar and attendance dashboard.
- **Shift Tracking**: Computes check-in/out timestamps, punctuality (Present vs Late), and shift duration.
- **Historical Attendance Sheet**: Filter by date and status (Present, Late, Half-day, Absent).
- **Admin / HR Manual Override**: Manually log or adjust employee check-in/out records.

### 5. 📅 Leave Management Workflow
- **Employee Leave Application**: Apply for *Casual Leave*, *Sick Leave*, *Annual Vacation*, *Maternity/Paternity*, or *Unpaid Leave* with start/end date pickers and reason.
- **Status Filter Tabs**: View *All*, *Pending*, *Approved*, and *Rejected* leaves.
- **Manager Approval Pipeline**: HR and Admins can approve or reject pending requests with custom feedback notes.
- **Employee Cancellation**: Employees can withdraw pending leave applications.

### 6. 🏢 Department Management
- Manage organizational structure: Name, department code (e.g. `ENG`, `HR`, `FIN`), description, head of department, and allocated budget.
- **Dynamic Headcount Tracking**: Displays real-time employee counts per department.
- **Safe Deletion**: Guards against accidental deletion of departments that currently have active assigned employees.

### 7. 📢 Corporate Announcements
- **Company Bulletin Board**: Priority notices categorized as *General*, *Event*, *Holiday*, *Policy*, or *Emergency*.
- **Priority Indicators**: Urgent (Red), High (Amber), Medium (Blue), Low (Gray).
- **Author attribution and publish dates**.

---

## 💻 Tech Stack

| Layer | Technology |
|---|---|
| **Frontend** | React 18 (Vite), React Router v6, Axios |
| **Styling** | Bootstrap 5, Bootstrap Icons, Custom Modern CSS |
| **Data Viz** | Chart.js & React-Chartjs-2 |
| **Backend** | Node.js, Express.js (MVC Architecture) |
| **Database** | MongoDB & Mongoose ODM (includes embedded zero-setup fallback) |
| **Security** | JWT, bcryptjs password hashing, RBAC middleware |

---

## ⚡ Quick Start (Windows)

### Option 1: Double-Click Batch File (Easiest)
1. Double-click **`start-all.bat`** in the project root.
2. It will automatically start the Backend server (port `5000`), the Frontend server (port `3000`), and open `http://localhost:3000` in your default web browser!

---

### Option 2: Running from Terminal / PowerShell

#### Step 1: Start Backend Server
```powershell
cd backend
npm install
npm start
```
*The backend starts at `http://localhost:5000`.*
*(If local MongoDB is not running, it automatically starts an embedded In-Memory MongoDB and seeds complete demo HR data).*

#### Step 2: Start Frontend Server
Open a second PowerShell window:
```powershell
cd frontend
npm install
npm run dev
```
*The React frontend will be accessible at `http://localhost:3000`.*

---

## 🔑 Demo Login Credentials

The system automatically initializes with sample accounts and corporate data on first run:

| Role | Email | Password | Access Privileges |
|---|---|---|---|
| **Admin** | `admin@staffsync.com` | `admin123` | Full system access, employee deletion, department deletion, manual attendance, announcements |
| **HR Manager** | `hr@staffsync.com` | `hr123` | Employee management, approve/reject leaves, department editing, manual attendance |
| **Employee** | `employee@staffsync.com` | `emp123` | Clock In/Out, view team directory, apply for leaves, view company announcements |

> 💡 **Tip:** On the Login page, you can also click the quick **"Instant Demo Access"** buttons to log in as Admin, HR, or Employee with a single click!

---

## 📁 Project Structure

```text
staffsync/
├── backend/
│   ├── src/
│   │   ├── config/
│   │   │   └── db.js                 # Database connection & memory fallback
│   │   ├── controllers/              # MVC Controllers
│   │   │   ├── authController.js
│   │   │   ├── employeeController.js
│   │   │   ├── attendanceController.js
│   │   │   ├── leaveController.js
│   │   │   ├── departmentController.js
│   │   │   ├── announcementController.js
│   │   │   └── dashboardController.js
│   │   ├── middleware/
│   │   │   ├── authMiddleware.js     # JWT verification & RBAC check
│   │   │   └── errorHandler.js       # Centralized error handler
│   │   ├── models/                   # Mongoose Data Schemas
│   │   │   ├── User.js
│   │   │   ├── Employee.js
│   │   │   ├── Attendance.js
│   │   │   ├── Leave.js
│   │   │   ├── Department.js
│   │   │   └── Announcement.js
│   │   ├── routes/                   # Express REST API Routes
│   │   ├── utils/
│   │   │   └── seeder.js             # Initial demo data populator
│   │   └── server.js                 # Express app entry & static server
│   ├── .env                          # Backend configuration
│   └── package.json
│
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── common/               # Reusable UI widgets (StatCard, Spinner, Alerts)
│   │   │   └── layout/               # Sidebar, Navbar, Page Wrapper
│   │   ├── context/
│   │   │   └── AuthContext.jsx       # Global Auth & Attendance state
│   │   ├── pages/                    # Application Pages
│   │   │   ├── Login.jsx
│   │   │   ├── Register.jsx
│   │   │   ├── Dashboard.jsx
│   │   │   ├── Employees.jsx
│   │   │   ├── Attendance.jsx
│   │   │   ├── Leaves.jsx
│   │   │   ├── Departments.jsx
│   │   │   ├── Announcements.jsx
│   │   │   └── Profile.jsx
│   │   ├── services/
│   │   │   └── api.js                # Axios client & API endpoints
│   │   ├── styles/
│   │   │   └── custom.css            # StaffSync navy/white design system
│   │   ├── App.jsx                   # Route configuration
│   │   └── main.jsx                  # React DOM root
│   ├── index.html
│   ├── vite.config.js
│   └── package.json
│
├── start-all.bat                     # Windows 1-click starter
├── start-backend.bat
├── start-frontend.bat
└── README.md
```

---

## 🛠️ REST API Endpoints Overview

- **Auth**: `POST /api/auth/register`, `POST /api/auth/login`, `GET /api/auth/me`, `PUT /api/auth/profile`
- **Dashboard**: `GET /api/dashboard/stats`
- **Employees**: `GET /api/employees`, `GET /api/employees/:id`, `POST /api/employees`, `PUT /api/employees/:id`, `DELETE /api/employees/:id`
- **Attendance**: `POST /api/attendance/check-in`, `POST /api/attendance/check-out`, `GET /api/attendance/today`, `GET /api/attendance`, `POST /api/attendance/manual`
- **Leaves**: `GET /api/leaves`, `POST /api/leaves`, `PUT /api/leaves/:id/status`, `DELETE /api/leaves/:id`
- **Departments**: `GET /api/departments`, `GET /api/departments/:id`, `POST /api/departments`, `PUT /api/departments/:id`, `DELETE /api/departments/:id`
- **Announcements**: `GET /api/announcements`, `POST /api/announcements`, `DELETE /api/announcements/:id`
