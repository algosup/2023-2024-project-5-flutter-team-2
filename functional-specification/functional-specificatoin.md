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
    - [2.4.1 Overview](#241-overview)
    - [2.4.2 Algorithm Design](#242-algorithm-design)
      - [Matching Criteria](#matching-criteria)
    - [2.4.3 Algorithm Workflow](#243-algorithm-workflow)
      - [Technology and Techniques](#technology-and-techniques)
      - [Example Algorithm Flow](#example-algorithm-flow)
    - [Example Content for the Matching Algorithm Section](#example-content-for-the-matching-algorithm-section)
      - [Overview](#overview)
      - [Algorithm Design](#algorithm-design)
      - [Matching Criteria](#matching-criteria-1)
      - [Algorithm Workflow](#algorithm-workflow)
      - [Technology and Techniques](#technology-and-techniques-1)
- [3. Non-Functional Requirements](#3-non-functional-requirements)
  - [3.1 Performance Requirements](#31-performance-requirements)
  - [3.2 Reliability and Availability](#32-reliability-and-availability)
  - [3.3 Security](#33-security)
  - [3.4 Usability](#34-usability)
  - [3.5 Maintainability](#35-maintainability)
  - [3.6 Portability](#36-portability)
  - [3.7 Backup and Recovery](#37-backup-and-recovery)
  - [3.8 Compliance and Legal Requirements](#38-compliance-and-legal-requirements)
- [4. User Interface Design](#4-user-interface-design)
  - [4.1 Design Principles](#41-design-principles)
  - [4.2 Wireframes and Mockups](#42-wireframes-and-mockups)
- [5. Technical Architecture](#5-technical-architecture)
  - [5.1 Front-End](#51-front-end)
  - [5.2 Back-End](#52-back-end)
- [6. Development and Testing Plan](#6-development-and-testing-plan)
  - [6.1 Development Phases](#61-development-phases)
  - [6.3 Testing Strategies](#63-testing-strategies)
  - [6.4 Quality Assurance (QA) Processes](#64-quality-assurance-qa-processes)
  - [6.5 Roles and Responsibilities](#65-roles-and-responsibilities)
  - [6.7 Duration and  Milestones](#67-duration-and--milestones)
- [7. Maintenance](#7-maintenance)
  - [7.1 Maintenance Plan](#71-maintenance-plan)
- [8. Risks and Mitigation](#8-risks-and-mitigation)


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

**NB:**<sup id="a2">[2](#f2)</sup> in short, the Adopt a Candidate concept aims to promote fair recruitment by anonymizing candidates and companies, promoting soft skills, emphasizing the human aspect of the process and facilitating connections between candidates and companies via a dedicated application.

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
  - Type of contract: Permanent Contract
  - Salary Range: $80,000 - $100,000
  - Soft Skills Required: Communication, Teamwork, Problem-solving

#### 4. Candidate Search and Matching
- **Matching Algorithm:**
  - The algorithm suggests candidates with profiles that match the job requirements, highlighting their validated soft skills.

#### 5. Application Management
- **Communication:**
  - Send a message to a shortlisted candidate to schedule an interview.


## 2.4 Matching Algorithm

It is a key component of the recruitment app, designed to connect candidates with job opportunities that best fit their soft skills and other relevant criteria. This section of the Functional Specification Document should detail the algorithm's design, functionality, criteria for matching, and underlying technology. Here’s a comprehensive breakdown of what to include:

### 2.4.1 Overview
- **Purpose:** The Matching Algorithm aims to enhance the recruitment process by prioritizing candidates' soft skills and aligning them with employers' requirements. This focus ensures a better fit for both the candidate and the employer, leading to more successful and lasting employment relationships.

### 2.4.2 Algorithm Design

- **Inputs:**
  - **Candidate Inputs:** Soft skills (validated through assessments), professional experience, educational background, job preferences (location, job type, industry), and profile endorsements.
  - **Employer Inputs:** Job requirements, preferred soft skills, job description, Company's description, salary, and location.

- **Outputs:**
  - **Candidate Matches:** A ranked list of job opportunities that best match the candidate’s profile.
  - **Employer Matches:** A ranked list of candidates that best match the job posting’s requirements.

#### Matching Criteria
- **Soft Skills:** The primary criterion, with weighting based on relevance to the job description and employer preferences. This includes both self-reported skills.

- **Experience:** Secondary criteria that consider the candidate's professional background is relevant to the job.

- **Job Preferences:** Match candidates’ job search preferences (e.g., Software engineer, Project manager) with the specifics of job postings.

- **Location:** Geographical proximity or specific location preferences, important for roles requiring on-site presence.

- **Employment preference:** Match candidates’ job search preferences (e.g., Fulltime, remote) with the specifics of job postings.

- **Type of Contract:** The type of contract will play an important role during match (e.g., Permanent contract, temporary contract)

### 2.4.3 Algorithm Workflow
1. **Data Collection:** Gather and process data from candidate profiles and job postings.

2. **Preprocessing:** Normalize and categorize the data for consistent comparison.

3. **Feature Extraction:** Identify and weigh relevant features from both candidate and employer inputs for consistent matching proposition.

#### Technology and Techniques

- **Natural Language Processing (NLP):** Analyze and extract meaningful information from job descriptions and candidate profiles, particularly for soft skills.

- **Collaborative Filtering:** Utilize recommendation techniques to suggest jobs to candidates and candidates to employers based on similar profiles and preferences.

- **Feedback Loop:** Continuously refine the algorithm using feedback from other group team members about match quality and success rates.

#### Example Algorithm Flow
1. **Profile Update:** A candidate updates their profile with new soft skills validated.

2. **Job Posting:** An employer posts a new job requiring specific soft skills, such as communication and teamwork.

3. **Data Matching:** The algorithm evaluates the candidate’s soft skills against the job requirements.

4. **Scoring:** The candidate and the employer receives a match score due to a strong alignment of soft skills of at least 50% soft-skills overlapping on both parties.

5. **Recommendation:** The job is presented to the candidate as a match, and the candidate's profile is highlighted to the employer.


### Example Content for the Matching Algorithm Section
#### Overview
The Matching Algorithm is designed to connect job seekers and employers by prioritizing soft skills, thus ensuring a better fit and higher job satisfaction. By focusing on attributes like communication, teamwork, and problem-solving, the algorithm aims to provide more meaningful matches.
#### Algorithm Design
- **Inputs:**
  - Candidate Inputs: Soft skills (assessed and endorsed), experience, education, job preferences, location.
  - Employer Inputs: Job requirements, preferred soft skills, company culture, job location.

- **Outputs:**
  - Candidate Matches: Ranked job opportunities.
  - Employer Matches: Ranked candidate profiles.

#### Matching Criteria
  - **Soft Skills:** Weighted heavily based on job requirements.
  - **Experience and Education:** Considered to ensure relevant background.
  - **Job Preferences:** Matched to job specifics.
  - **Location:** Geographical matching.
  - **Company Culture Fit:** Ensuring alignment of values.
  - **Engagement and Activity:** Prioritizing active users.

#### Algorithm Workflow
  1. Data Collection
  2. Preprocessing
  3. Feature Extraction

#### Technology and Techniques
- **NLP:** Extracting relevant information from profiles and descriptions.
- **Collaborative Filtering:** Enhancing recommendations.
- **Feedback Loop:** Refining matches based on user feedback.

By detailing these aspects, these provide a clear and comprehensive understanding of the Matching Algorithm, its functionality, and its importance in the recruitment app.

# 3. Non-Functional Requirements

Non-functional requirements (NFRs) define the system's operational characteristics and constraints, focusing on how the system performs rather than what it performs. These requirements are crucial for ensuring the overall quality, usability, and reliability of the system. Here’s a detailed breakdown of what to include in the Non-Functional Requirements section:

## 3.1 Performance Requirements
- **Response Time:** The system should respond to user actions (e.g., loading profiles) within 2 seconds under normal load conditions.

- **Throughput:** The system should handle a minimum of 100 concurrent users without performance degradation.

- **Scalability:** The system must scale to support up to 10,000 concurrent users with minimal impact on performance.


## 3.2 Reliability and Availability
- **Uptime:** The system should have an uptime of 99.9% to ensure it is available for users at all times, excluding scheduled maintenance.

- **Error Handling:** The system should handle errors gracefully, providing meaningful error messages to users.


## 3.3 Security
- **Data Protection:** All sensitive data (e.g., personal information, passwords) must be encrypted both in transit and at rest.

- **Authentication and Authorization:** Implement secure authentication (e.g., multi-factor authentication) and authorization mechanisms to control user access.

- **Compliance:** The system must comply with relevant data protection regulations (e.g., GDPR).


## 3.4 Usability
- **User Interface:** The user interface should be intuitive and easy to navigate, following design best practices and accessibility standards (e.g., WCAG 2.1).

- **Accessibility:** The system must be accessible to users with disabilities, including screen reader compatibility and keyboard navigation.

- **Localization:** Support multiple languages and regional settings to cater to a diverse user base. Main priority(English, and French).


## 3.5 Maintainability
- **Code Quality:** Follow coding standards and best practices to ensure code is maintainable and easy to understand.

- **Documentation:** Provide comprehensive documentation for developers, including code comments, API documentation, and user manuals.

- **Modularity:** Design the system in a modular way to facilitate easy updates and additions of new features.


## 3.6 Portability
- **Platform Compatibility:** Ensure the system is compatible with multiple operating systems (e.g., Windows, macOS, Linux) and devices (e.g., desktops, tablets, smartphones).

- **Browser Compatibility:** Support all major web browsers (e.g., Chrome, Firefox, Safari, Edge) to ensure a consistent user experience.


## 3.7 Backup and Recovery
- **Data Backup:** Implement regular data backups (e.g., daily, weekly) and ensure backups are stored securely.

- **Disaster Recovery:** Have a disaster recovery plan, including regular testing to ensure the system can be restored within a specified time frame.


## 3.8 Compliance and Legal Requirements
- **Data Privacy:** Adhere to data privacy laws and regulations, ensuring user data is handled appropriately.

- **Terms of Service and Privacy Policy:** Clearly outline the terms of service and privacy policy, making them easily accessible to users.



# 4. User Interface Design
## 4.1 Design Principles

- **Summary:** State the principles guiding the UI design.
- **Detail:** Focus on simplicity, consistency, and accessibility.

## 4.2 Wireframes and Mockups

- **Summary:** Provide visual representations of the app.
- **Detail:** Include wireframes and mockups for key screens like the home page, profile pages, job search, and application tracking.

# 5. Technical Architecture
The technical architecture outlines the overall structure and the technologies used to build and run the application. This section provides a high-level view, avoiding deep technical details to keep it accessible to a wider audience.

## 5.1 Front-End
- **Technologies:** For the technology that will be used to build the front-end part of the project, we will have to use Flutter and Dart. Dart is a programming language used to write Flutter apps. On the other hand, Flutter is a UI toolkit from Google for building natively compiled mobile, web, and desktop applications from a single code base.

- **Responsive Design:** The user interface will be built using a responsive design tool, known as FIGMA, it will help to ensure that the app looks and works well on various screen sizes and orientations.


## 5.2 Back-End
- **Technologies Used:** Dart is working on both Front-End and Back-End, so for the logical part of the app, Dart will be used to handle that.

- **Back-End Framework:** The sever-side logic is handle by a robust backend framework that manages data processing, user authentication, and business logic.

- **Database:** A relational database stores all user data, job postings, and application records securely. This database is optimized for fast retrieval and data integrity.



# 6. Development and Testing Plan
The Development and Testing Plan outlines the approach, methodologies, and processes to be followed during the development and testing phases of the recruitment app. This plan ensures that the project progresses smoothly, meets its objectives, and delivers a high-quality product.

## 6.1 Development Phases
**1. Requirements Gathering:** Collect detailed requirements from stakeholders, including feature specifications and user stories.

**2. Design Phase:**
- **UI/UX Design:** Create wireframes and prototypes for the user interface.

- **Architecture Design:** Define the overall system architecture, including the client-side, server-side, and database design.

**3. Implementation Phase:**
- **Frontend Development:** Develop the user interface using modern web and mobile development frameworks.

- **Backend Development:**Implement the server-side logic, and database interactions.

- **Integration:** Integrate the frontend and backend components to ensure seamless communication and functionality.

**4. Testing Phase:**
- **Unit Testing:** Test individual components and modules for correctness.

- **Integration Testing:** Test the interactions between integrated components to ensure they work together as expected.

- **System Testing:** Conduct end-to-end testing of the entire system to validate overall functionality.

- **User Acceptance Testing (UAT):** Perform testing with actual users(team members) to gather feedback and ensure the app meets their needs.

## 6.3 Testing Strategies
- **Automated Testing:** Implement automated testing for unit and integration tests to ensure consistent and repeatable test coverage.

- **Manual Testing:** Conduct manual testing for UI/UX, exploratory testing, and user acceptance testing to identify issues that automated tests might miss.

- **Performance Testing:** Test the app's performance under various conditions to ensure it meets response time and scalability requirements.

- **Security Testing:** Perform security assessments to identify and address vulnerabilities, ensuring data protection and compliance with regulations.


## 6.4 Quality Assurance (QA) Processes
- **Code Reviews:** Conduct regular code reviews to ensure code quality, consistency, and adherence to best practices.

- **Defect Tracking:** Use a defect tracking system to log, prioritize, and track issues until they are resolved.


## 6.5 Roles and Responsibilities
- **Project Manager:** Oversees the project, ensures timelines are met, and communicates with stakeholders.

- **Product Owner or Program Manager:** Represents the stakeholders, prioritizes the backlog, and ensures the product meets user needs.

- **Developers:** Responsible for implementing the frontend and backend components.

- **QA Engineers:** Conduct testing to ensure the app meets quality standards.

- **UI/UX Designers:** Design the user interface and user experience.

## 6.7 Duration and  Milestones
**1. Duration Timeline:**

| Milestones                                                 | Duration time   |
|:----------------------------------------------------------:|:---------------:|
| Required documents(functional and technical specification) | 3 weeks         |
| UX/UI design                                               | 2 weeks         |
| Architecture design                                        | 1 week          |
| Frontend development                                       | 1 week          |
| Backend development                                        | 1 week          |
| System testing                                             | 1 week          |
| User Manual                                                | 3 weeks         |


**2. Milestones:**
- **M1:** Completion of all the required documents.
- **M2:** Completion of the UX/UI design.
- **M3:** Completion of the architecture design.
- **M4:** Completion of the Front-End development.
- **M5:** Completion of the Back-End development.
- **M6:** Completion of the system testing.
- **M7:** Completion of the User Manual document.

# 7. Maintenance
The Maintenance section outlines the strategies and processes for ensuring its ongoing reliability and performance. This section covers the steps for an ongoing maintenance activities.

## 7.1 Maintenance Plan
**1. Regular Updates:** Schedule regular updates to add new features, improve existing functionalities, and fix bugs.

- **Bug Fixes:** Address any reported bugs promptly to maintain a high-quality user experience.

- **Security Patches:** Release security patches regularly to protect against vulnerabilities.

**2. Performance Monitoring:**
- **Performance Tuning:** Continuously analyze performance data to identify bottlenecks and optimize the app for better performance.

**3. Backup and Recovery:**
- **Regular Backups:** Schedule automated backups of the database and critical systems to prevent data loss.

**4. User Support and Help Desk:**
- **Knowledge Base:** Maintain an online knowledge base with FAQs, guides, and troubleshooting steps to help users resolve common issues independently.

**5. Documentation:**
- **Technical Documentation:** Maintain up-to-date technical documentation for developers and support staff, covering system architecture, deployment processes, and troubleshooting.

- **User Documentation:** Provide user manuals, guides, and tutorials to help users understand and make the most of the app's features.

# 8. Risks and Mitigation

- **Summary:** Identify potential risks and their mitigation.
- **Detail:__ List risks (e.g., security breaches, performance issues) and corresponding mitigation strategies.

9. Glossary

<sup id="f1"></sup> skills matrix is a  document or a defined list that outlines the specific skills or competencies that are required for a particular job role or that a candidate possesses.[↩](#a1)

<sup id="f2"></sup> NB is an abbreviation for the Latin phrase "Nota Bene", which translates to "note well" in English. It is used to draw the reader's attention to a particular point or detail. [↩](#a2)

<sup id="f1">^</sup> GDPR (General Data Protection Regulation): This is a regulation in EU law that protects the privacy and personal data of EU citizens. It gives individuals control over their personal data and simplifies the regulatory environment for international business. Key aspects of GDPR include the right to access your own data, the right to be forgotten (data erasure), and the requirement for organizations to obtain consent before collecting or processing personal data. [↩](#a1^)

<sup id="f1">^</sup>WCAG 2.1, or Web Content Accessibility Guidelines 2.1, is a set of guidelines developed by the World Wide Web Consortium (W3C) to make web content more accessible to people with disabilities. [↩](#a1^)