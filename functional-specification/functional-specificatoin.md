# 2023-2024 - PROJECT-5 - FLUTTER - TEAM - 5
<h1 align="center">
 Functional Specifications
</h1>
<p align="right">created : 18/05/2024<br>last modified : 20/05/2024</p>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details>
<summary>Table of Content</summary>

- [2023-2024 - PROJECT-5 - FLUTTER - TEAM - 5](#2023-2024---project-5---flutter---team---5)
- [1. **Introduction**](#1-introduction)
  - [1.1 Project Overview](#11-project-overview)
  - [1.2 Objectives](#12-objectives)
  - [1.3 Stakeholders](#13-stakeholders)
  - [1.4 Scope](#14-scope)
  - [1.5 Deliverables](#15-deliverables)
- [2. Functional Requirements](#2-functional-requirements)
  - [2.1 User Profiles](#21-user-profiles)
  - [2.2 Candidate Module](#22-candidate-module)
    - [1. Registration and Login](#1-registration-and-login)
    - [2. Profile Creation and Management](#2-profile-creation-and-management)
    - [3. Job Search and Matching](#3-job-search-and-matching)
    - [4. Application Management](#4-application-management)
    - [5. Notifications and Alerts](#5-notifications-and-alerts)
    - [6. Privacy and Security Settings](#6-privacy-and-security-settings)
    - [Example Content for the Candidate Module](#example-content-for-the-candidate-module)
      - [1. Registration and Login](#1-registration-and-login-1)
      - [2. Profile Creation and Management](#2-profile-creation-and-management-1)
  - [2.3 Employer Module](#23-employer-module)
    - [1. Registration and Login](#1-registration-and-login-2)
    - [2. Company Profile Creation and Management](#2-company-profile-creation-and-management)
    - [3. Job Posting Management](#3-job-posting-management)
    - [4. Candidate Search and Matching](#4-candidate-search-and-matching)
    - [5. Application Management](#5-application-management)
    - [6. Notifications and Alerts](#6-notifications-and-alerts)
    - [7. Privacy and Security Settings](#7-privacy-and-security-settings)
    - [Example Content for the Employer Module](#example-content-for-the-employer-module)
      - [1. Registration and Login](#1-registration-and-login-3)
      - [2. Company Profile Creation and Management](#2-company-profile-creation-and-management-1)
      - [3. Job Posting Management](#3-job-posting-management-1)
      - [4. Candidate Search and Matching](#4-candidate-search-and-matching-1)
      - [5. Application Management](#5-application-management-1)
  - [2.4 Matching Algorithm](#24-matching-algorithm)
- [3. Non-Functional Requirements](#3-non-functional-requirements)
  - [3.1 Performance](#31-performance)
  - [3.2 Security](#32-security)
  - [3.3 Usability](#33-usability)
  - [3.4 Scalability](#34-scalability)
- [4. User Interface Design](#4-user-interface-design)
  - [4.1 Design Principles](#41-design-principles)
  - [4.2 Wireframes and Mockups](#42-wireframes-and-mockups)
- [5. Technical Architecture](#5-technical-architecture)
  - [5.1 System Architecture](#51-system-architecture)
  - [5.2 Technology Stack](#52-technology-stack)
- [6. Development and Testing Plan](#6-development-and-testing-plan)
  - [6.1 Development Methodology](#61-development-methodology)
  - [6.2 Testing Strategy](#62-testing-strategy)
- [7. Deployment and Maintenance](#7-deployment-and-maintenance)
  - [7.1 Deployment Plan](#71-deployment-plan)
  - [7.2 Maintenance and Support](#72-maintenance-and-support)
- [8. Risks and Mitigations](#8-risks-and-mitigations)
- [9. Appendices](#9-appendices)
- [10. Glossary](#10-glossary)


</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


# 1. **Introduction**
## 1.1 Project Overview

We received a call for tender from We Are Evolution on May 13, 2024. Our main goal was to create an application called "Adopte Un Candidat," with a "Tinder-style" recruitment approach that matches companies with jobseekers based on soft skills rather than age, gender, home country. The app needed to be created in Flutter and be available on phones, tablets, computers.

## 1.2 Objectives

The key points of the Adopte un Candidat concept are as follows:

- **Anonymization of candidates and companies:** To avoid discrimination in hiring, candidates and companies are anonymized on the platform. This allows us to focus on candidates' skills and potential, rather than their origin, gender, age.

- **Valuing soft skills:** Instead of focusing solely on diplomas and professional experience, the concept emphasizes soft skills, i.e. the behavioral and relational skills of candidates. This makes it possible to recognize and evaluate skills such as communication, teamwork, creativity, problem-solving, etc.

- **Priority given to the human aspect:** The concept emphasizes the human aspect of recruitment, recognizing that each candidate has unique talents and skills to offer. It seeks to give each individual the opportunity to showcase his or her skills, regardless of background or academic credentials.

- **Matching between candidates and companies:** The matching process enables candidates and companies to connect and find an ideal match. Candidates can express their preferences in terms of companies and positions, and companies can search for candidates who match their cultural and organizational needs.

- **Using an application:** The entire recruitment process takes place on a dedicated application. This facilitates interaction between candidates and companies, offering features such as messaging, personalized profiles, etc.

- **Process:** In our approach, we do not have tests, quizzes, or games. Instead, candidates will have the opportunity to select their soft skills from a provided list, while recruiters will choose the desired skills from the same list. The match will occur when there is a 50% overlap of soft skills between the candidate and the company. Our concept is inspired by the functionality of the "Tinder" application for recruitment. There is no document or defined skills matrix<sup id="a1">[1](#f1)</sup>.

**NB:**<sup id="a1">[2](#f1)</sup> in short, the Adopt a Candidate concept aims to promote fair recruitment by anonymizing candidates and companies, promoting soft skills, emphasizing the human aspect of the process and facilitating connections between candidates and companies via a dedicated application.

## 1.3 Stakeholders

| Profile                                                                                                                                     | Name            | Link              | Description                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ----------------- | ------------------------------------------------------------------ |
| [<img src="https://avatars.githubusercontent.com/u/91249965?s=400&u=12ebc6578a0969df1430d721d04a795af5860868&v=4" width="80px"  height="80px">](https://github.com/PaulNowak36)    | Paul NOWAK    | [LinkedIn](https://www.linkedin.com/in/paul-nowak-0757a61a7/)   | Team member          |
| [<img src="https://avatars.githubusercontent.com/u/122369054?v=4" width="80px"  height="80px">](https://github.com/Bistrel2002)          | Vivien Bistrel TSANGUE CHOUNGOU    | [LinkedIn](https://www.linkedin.com/in/bistrel-tsangue-603635261/)    | Team member   |
| [<img src="https://avatars.githubusercontent.com/u/160007182?v=4" width="80px"  height="80px">](https://github.com/seiv007) | Mouatassime SEIV | [LinkedIn](https://www.linkedin.com/in/moutassime-seiv-9542171a9/)  | Team member |
| [<img src="https://avatars.githubusercontent.com/u/145991267?v=4" width="80px"  height="80px">](https://github.com/Amakran2003)        | Abderrazaq MAKRAN      | [LinkedIn](https://www.linkedin.com/in/abderrazaq-makran/)  | Team member      |
| [<img src="https://avatars.githubusercontent.com/u/145991354?v=4" width="80px"  height="80px">](https://github.com/mathislebel)          | Mathis LEBEL   | [LinkedIn](https://www.linkedin.com/in/mathis-lebel-429114293/) | Team member   |
| [<img src = "https://media.licdn.com/dms/image/D4E0BAQG1haVhzU3tPA/company-logo_200_200/0/1665741131683/algosup_logo?e=1724284800&v=beta&t=lTCzFjP-h8CM2GxPv9LjQHAn5CYhVvXutNpfw9cFj5Q" width="80px" height="80px">](https://www.algosup.com/) |  ALGOSUP  |  [LinkedIn](https://www.linkedin.com/company/algosup/?lipi=urn%3Ali%3Apage%3Ad_flagship3_search_srp_all%3BdIb40oR%2FTs2bm67y4hmETg%3D%3D)  |    STAFF  |
| [<img src = "https://media.licdn.com/dms/image/D4E0BAQFumuhztZoE2A/company-logo_200_200/0/1706187895587?e=1724284800&v=beta&t=tvTO6nEIWXTWsPw-Ev1iNALIXYFRaeNZMXnHIUwthlQ" width="80px" height="80px">](https://www.algosup.com/) |  We Are Evolution  |  [LinkedIn](https://www.linkedin.com/company/we-are-evolution/?lipi=urn%3Ali%3Apage%3Ad_flagship3_search_srp_all%3B94Bpx9LkQyKAEqVFu3tqkA%3D%3D)  |    CLIENT'S COMPANY  |


## 1.4 Scope

| In Scope                                                       |
|----------------------------------------------------------------|
| Create a recruitment application in flutter                    |
| Design the application mockup                                  |
| Us the programming language dart                               |
| Create a LOGO for the application                              |
| The application should have a "Tinder Style" interface         |
| Simulate the backend of the application                        |

| Out of Scope                                             |
|----------------------------------------------------------|
| Make a full complete backend of the application          |
| Use the NoCode part of flutter to create the application |

## 1.5 Deliverables

| Name                     | Type               |   Deadline   |
| ------------------------ | ------------------ | :----------: |
| Functional Specification | Markdown           | 24/05/2024   |
| Technical Specification  | Markdown           | 07/05/2024   |
| Test Plan                | Markdown           | 07/05/2024   |
| Code                     | dart               | 14/05/2024   |
| User Manual              | PDF                | 14/05/2024   |


# 2. Functional Requirements
## 2.1 User Profiles

1. **Basic Information**
    - ***Fields:***
      - Full Name
      - Contact Information(Email Address, Phone Number)
      - Location (City, Country)
      - Profile Picture
      - Industry

2. **Professional Information**
    - ***Fields:***
      - Current Job Title
      - Actual Situation
      - Availability
      - Level Of Experience
      - Qualificatoin Level

3. **SoftSkills**
   - ***Features:***
     - Candidates can select their soft skills from a predefined list and can also add a skill that doesn't appears on the list(e.g., communication, teamwork, leadership, time management).

4. **Preferences**
   - ***Fields:*** 
     - Desired Job Title
     - Location
     - Type of Contract

5. **Swiping**
   - ***Features:***
     - Name 
     - Logo
     - Description
     - Job Title

6. **Message**
    There is a message widget available in case both the employer and the employee need to discuss on certain points.

## 2.2 Candidate Module

The Candidate Module is a critical part of the recruitment app, designed to provide candidates with a seamless and comprehensive experience from registration to job application. Here's a detailed outline of the features and functionalities to include in the Candidate Module:

### 1. Registration and Login
- ***Features:***
  - **Sign-Up Options:** Allow candidates to register using email, directly with google account or icloud account, social media account (Facebook) else the candidates enter his first Name, Last Name, Email, password, confirm password, phone number, and location.

  - **Login:** Secure login functionality with password protection and options for password recovery in case the user forgot his password.

### 2. Profile Creation and Management
- ***Features:***
  - **Personal Information:** Candidates has their name, contact details, location, and they have to upload a profile picture.

  - **Search:** Candidates add their desired job title, Location, and finally the type of contract the candidate wishes to have.

  - **Soft Skills Section:**
    - **Self-Assessment:** Candidates select their soft skills from a predefined list (e.g., communication, teamwork, problem-solving, leadership, time management).
  - **Situation:**
    - Candidates enter the job he wishes from a list of job
    - Candidates actual situation(Employed, unemployed),
    - Availability(Immediately, Adjustable)
    - Level of experience(Beginner, 2-3 years, 4-10 years, 10 years plus).
    - Qualification level(BEP/CAP, Employee/Operator/BAC, Technician/ Employee BAC+2, Agent-control/ BAC +3/4, Engineer/Officer/BAC +5, Executive Officer).

### 3. Job Search and Matching
- ***Features:***
  - **Personalized Recommendations:** Job recommendations based on the candidate’s profile, soft skills, and preferences.
  - **Matching Algorithm:** Receive suggestions for COMPANYs who match the job requirements based on the soft skills and other criteria.


### 4. Application Management
- ***Features:***
  - **Match Applications:** Candidates can have a match with a COMPANY directly through the app.

  - **Swap Actions:** The choice to reject or accept any Employer base on the information you can see.

  - **Communication:** In-app messaging system to communicate with potential employers.

### 5. Notifications and Alerts
- ***Features:***
  - **Match Alerts:** Candidates can see the company in the message widget if there is a match between both parties.

  - **Job Alerts:** Candidates receive notifications about new job postings that match their profile and preferences.

  - **Application Updates:** Real-time updates on the status of job applications.


### 6. Privacy and Security Settings
- ***Features:***
  - **Profile Visibility:** Options for candidates to control who can view their profile (public, private, or only specific employers).

  - **Account Settings:** Options to manage account details, change passwords, and deactivate accounts if needed.

### Example Content for the Candidate Module

#### 1. Registration and Login
- **1.1 Sign-Up:**
  - First Name: John
  - Last Name: Doe
  - Email: john.doe@example.com
  - Password: ********
  - Confirm Password: ********
  - Location: New York, USA
  - Phone Number: 123456789

- **1.2 Login:**
  - Contact Information: john.doe@example.com
  - Password: **********

#### 2. Profile Creation and Management
- **2.1 Personal Information:**
  - First Name: John
  - Last Name: Doe
  - Email: john.doe@example.com
  - Password: ********
  - Location: New York, USA
  - Phone Number: 123456789
  - Profile Picture: [Upload Option]

- **2.2 Searchings:**
  - Job Title: Marketing Manager
  - Location: California, USA
  - Type of contract: CDI

- **2.3 Soft Skills Section:**
  - *Self-Assessment:*
    - Communication
    - Teamwork
    - Problem-solving
    - Leadership
    - Time management
    - Conflict solving

- **2.4 Situation**
  - Job Title: Marketing Specialist, Marketing Manager
  - Actual status: unemployed
  - Availability: Immediately
  - Level of experience: 6 years
  - Qualification: BAC +5

## 2.3 Employer Module

The Employer Module is designed to provide companies with the tools they need to effectively post job openings, search for candidates based on soft skills, and manage the recruitment process. Here’s a detailed outline of the features and functionalities to include in the Employer's Module:

### 1. Registration and Login
- **Features:**
  - **Sign-Up Options:** Allow employer to register using their company email, google, social media accounts (Facebook), or with a dedicated company account(icloud), else the Employer will have to enter the COMPANY's NAME, The COMPANY's size, Location(s), email address, password, confirm password, phone number.

  - **Login:** Secure login functionality with password protection and options for password recovery.

### 2. Company Profile Creation and Management
- **Features:**
  - **Basic Information:** Employers has the company name, industry, size (number of employees), and location(s), email address, password.

  - **Company Description:** A detailed description of the company’s mission, values, culture, and work environment.

  - **Multimedia:** Upload company logo

  - **Social Media Links:** Links to the company’s social media profiles (LinkedIn, Facebook, Twitter, etc.).

### 3. Job Posting Management
- **Features:**
  - **Create Job Postings:** Employers can create and publish job postings with detailed descriptions, requirements, and preferred soft skills.

  - **Job Posting Fields:** Job title, job description, location (remote, on-site, hybrid), employment type (full-time, part-time, contract), salary range, and soft skills required.

### 4. Candidate Search and Matching
- **Features:**
  - **Candidate Profiles:** View detailed candidate profiles on the swapping widget, including their soft skills, work experience.

  - **Matching Algorithm:** Receive suggestions for candidates who match the job requirements based on the soft skills and other criteria.


### 5. Application Management
- **Features:**
  - **Communication:** In-app messaging system to communicate directly with candidates.

  - **Swap Actions:** The choice to reject or accept any candidate base on the informations you can see.


### 6. Notifications and Alerts
- **Features:**
  - **Application Alerts:** Notifications when new applications are received for posted jobs.

  - **Candidate Activity:** Alerts for candidate profile updates or new endorsements relevant to posted jobs.

### 7. Privacy and Security Settings
- **Features:**
  - **Profile Visibility:** Control the visibility of job postings and company profile (public, private, or restricted access).

  - **Account Settings:** Manage account details, change passwords, and set user roles within the employer's recruitment team.

### Example Content for the Employer Module
#### 1. Registration and Login

- **1.1 Sign-Up:**
  - Company Name: Tech Innovators Inc.
  - Size: 200 employees
  - Location(s): San Francisco, CA; New York, NY
  - Email Address: info@techinnov.fr
  - Password: **********
  - Confirm Password: **********
  - Phone Number: 87654321

- **1.2 Login:**
  - Email Address: info@techinnov.fr
  - Password: **********

#### 2. Company Profile Creation and Management
- **2.1 Basic Information:**
  - Company Name: Tech Innovators Inc.
  - Industry: Information Technology
  - Size: 200 employees
  - Location(s): San Francisco, CA; New York, NY
  - Email Address: info@techinnov.fr
  - Password: **********
  - Phone Number: 87654321

- **2.2 Company Description:**
    Tech Innovators Inc. is a leading technology company dedicated to developing innovative solutions for modern business challenges. Our mission is to leverage cutting-edge technology to drive business success while fostering a collaborative and inclusive work environment.

- **2.3 Multimedia:**
  - Logo: [Upload Option]

- **2.4 Social Media Links:**
  - LinkedIn: [Link]
  - Facebook: [Link]
  - Twitter: [Link]

#### 3. Job Posting Management
- **3.1 Create Job Posting:**
  - Job Title: Software Engineer
  - Job Description: We are seeking a skilled Software Engineer with strong problem-solving abilities and a collaborative spirit. The ideal candidate will have experience in full-stack development and a passion for innovative technology solutions.
  - Location: San Francisco, CA (Remote options available)
  - Employment Type: Full-time
  - Salary Range: $80,000 - $100,000
  - Soft Skills Required: Communication, Teamwork, Problem-solving

#### 4. Candidate Search and Matching
- **Matching Algorithm:**
  - The algorithm suggests candidates with profiles that match the job requirements, highlighting their validated soft skills.

#### 5. Application Management
- **Communication:**
  - Send a message to a shortlisted candidate to schedule an interview.


## 2.4 Matching Algorithm

- **Summary:** Explain the core functionality of matching candidates with job postings.
- **Detail:** Describe how the algorithm prioritizes soft skills, the criteria used for matching, and the technology behind it (e.g., machine learning).

# 3. Non-Functional Requirements
## 3.1 Performance

- **Summary:** Define performance expectations.
- **Detail:** Specify response times, load times, and other performance metrics.

## 3.2 Security

- **Summary:** Outline the security measures.
- **Detail:** Include data encryption, user authentication, and compliance with data protection regulations.

## 3.3 Usability

- **Summary:** Describe usability standards.
- **Detail:** Ensure the app is user-friendly, with an intuitive interface and accessible design.

## 3.4 Scalability

- **Summary:** Discuss how the app will handle growth.
- **Detail:** Plan for increasing user numbers and expanding features without compromising performance.

# 4. User Interface Design
## 4.1 Design Principles

- **Summary:** State the principles guiding the UI design.
- **Detail:** Focus on simplicity, consistency, and accessibility.

## 4.2 Wireframes and Mockups

- **Summary:** Provide visual representations of the app.
- **Detail:** Include wireframes and mockups for key screens like the home page, profile pages, job search, and application tracking.

# 5. Technical Architecture
## 5.1 System Architecture

- **Summary:** Describe the overall system architecture.
- **Detail:** Outline the architecture, including client-server model, databases, and any external integrations.

## 5.2 Technology Stack

- **Summary:** List the technologies used.
- **Detail:** Detail the frontend and backend technologies, databases, and any third-party services.

# 6. Development and Testing Plan
## 6.1 Development Methodology

- **Summary:** Define the development approach.
- **Detail:** Explain the chosen methodology (e.g., Agile, Scrum) and the rationale behind it.

## 6.2 Testing Strategy

- **Summary:** Describe the testing plan.
- **Detail:** Cover unit testing, integration testing, user acceptance testing, and any automated testing tools to be used.

# 7. Deployment and Maintenance
## 7.1 Deployment Plan

- **Summary:** Outline the deployment strategy.
- **Detail:** Describe the process for deploying the app, including staging environments, roll-out plans, and any downtime considerations.

## 7.2 Maintenance and Support

- **Summary:** Plan for ongoing maintenance.
- **Detail:** Include plans for bug fixes, updates, and user support.

# 8. Risks and Mitigations

- **Summary:** Identify potential risks and their mitigations.
- **Detail:__ List risks (e.g., security breaches, performance issues) and corresponding mitigation strategies.

# 9. Appendices
Summary: Include supplementary information.
Detail: Add any additional documents, such as detailed questionnaires for soft skill assessments, detailed use case scenarios, and glossary of terms.

# 10. Glossary
<sup id="f1">1</sup> skills matrix is a  document or a defined list that outlines the specific skills or competencies that are required for a particular job role or that a candidate possesses.[↩](#a1)

<sup id="f1">2</sup> NB is an abbreviation for the Latin phrase "Nota Bene", which translates to "note well" in English. It is used to draw the reader's attention to a particular point or detail. [↩](#a1)
