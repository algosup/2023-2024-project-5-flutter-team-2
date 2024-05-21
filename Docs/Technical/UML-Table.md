**Document Information:**

|                   | Information |
| ----------------- | ----------- |
| Document Owner    | Mouatassime Seiv|
| Creation Date     | 2024/05/13  |
| Last Update Date  | 2024/05/21  |

---
### 1 
# UML Diagram for ADOPTE CANDIDATE App

## Class Diagram Components

### User

| Attribute      | Type   | Description                     |
|----------------|--------|---------------------------------|
| `userId`       | String | Unique identifier               |
| `email`        | String | Email address                   |
| `password`     | String | User password                   |
| `userType`     | String | Type of user (employee/company) |

| Method         | Description                          |
|----------------|--------------------------------------|
| `login()`      | Log in the user                      |
| `logout()`     | Log out the user                     |
| `register()`   | Register a new user                  |
| `updateProfile()` | Update user's profile information |

### EmployeeProfile (inherits from User)

| Attribute      | Type   | Description              |
|----------------|--------|--------------------------|
| `employeeId`   | String | Employee identifier      |
| `name`         | String | Employee name            |
| `resume`       | String | Link to resume           |
| `skills`       | String | List of skills           |
| `experience`   | String | Work experience          |
| `education`    | String | Educational background   |
| `location`     | String | Location of the employee |

| Method             | Description                               |
|--------------------|-------------------------------------------|
| `uploadResume()`   | Upload a new resume                       |
| `editProfile()`    | Edit employee profile                     |
| `viewCompanyProfile()` | View company profiles                 |

### CompanyProfile (inherits from User)

| Attribute      | Type   | Description             |
|----------------|--------|-------------------------|
| `companyId`    | String | Company identifier      |
| `companyName`  | String | Name of the company     |
| `description`  | String | Company description     |
| `industry`     | String | Industry of the company |
| `location`     | String | Location of the company |
| `jobPostings`  | List   | List of job postings    |

| Method               | Description                              |
|----------------------|------------------------------------------|
| `createJobPosting()` | Create a new job posting                 |
| `editJobPosting()`   | Edit an existing job posting             |
| `viewEmployeeProfile()` | View employee profiles                |

### JobPosting

| Attribute      | Type   | Description              |
|----------------|--------|------------------------- |
| `jobId`        | String | Job identifier           |
| `companyId`    | String | Identifier of the company|
| `title`        | String | Job title                |
| `description`  | String | Job description          |
| `requirements` | String | Job requirements         |
| `location`     | String | Job location             |
| `salary`       | String | Job salary               |

| Method          | Description                              |
|-----------------|------------------------------------------|
| `createJob()`   | Create a new job                         |
| `editJob()`     | Edit an existing job                     |
| `closeJob()`    | Close a job posting                      |

### Match

| Attribute      | Type   | Description             |
|----------------|--------|-------------------------|
| `matchId`      | String | Match identifier        |
| `employeeId`   | String | Identifier of the employee|
| `jobId`        | String | Identifier of the job   |
| `status`       | String | Status of the match (pending, accepted, rejected) |

| Method            | Description                              |
|-------------------|------------------------------------------|
| `createMatch()`   | Create a new match                       |
| `updateStatus()`  | Update the status of a match             |

### Application

| Attribute      | Type   | Description             |
|----------------|--------|-------------------------|
| `applicationId`| String | Application identifier  |
| `employeeId`   | String | Identifier of the employee|
| `jobId`        | String | Identifier of the job   |
| `status`       | String | Status of the application (applied, reviewed, interviewed, hired, rejected) |

| Method                   | Description                              |
|--------------------------|------------------------------------------|
| `applyForJob()`          | Apply for a job                          |
| `updateApplicationStatus()` | Update the status of an application   |

### Message

| Attribute      | Type   | Description               |
|----------------|--------|-------------------------  |
| `messageId`    | String | Message identifier        |
| `senderId`     | String | Identifier of the sender  |
| `receiverId`   | String | Identifier of the receiver|
| `matchId`      | String | Identifier of the match   |
| `content`      | String | Message content           |
| `timestamp`    | String | Timestamp of the message  |

| Method            | Description                              |
|-------------------|------------------------------------------|
| `sendMessage()`   | Send a message                           |
| `viewMessageThread()` | View the message thread              |

---


## 2 ##

# UML Diagram for Recruitment App

## Class Diagram

```plaintext
+----------------+              +-----------------+               +-------------------+
|     User       |<|---------|  | EmployeeProfile |               |  CompanyProfile   |
|----------------|              |-----------------|               |-------------------|
| - userId       |              | - employeeId    |               | - companyId       |
| - email        |              | - name          |               | - companyName     |
| - password     |              | - resume        |               | - description     |
| - userType     |              | - skills        |               | - industry        |
|----------------|              | - experience    |               | - location        |
| + login()      |              | - education     |               | - jobPostings     |
| + logout()     |              | - location      |               |-------------------|
| + register()   |              |-----------------|               | + createJobPosting()|
| + updateProfile()|            | + uploadResume()|               | + editJobPosting() |
+----------------+              | + editProfile() |               | + viewEmployeeProfile() |
                                | + viewCompanyProfile()|         +-------------------+
                                +-----------------+
                                      ^                                    ^
                                      |                                    |
                                      |                                    |
                                      |                                    |
                           +-----------+---------------+     +-------------+---------------+
                           |       JobPosting          |     |             Match           |
                           |---------------------------|     |-----------------------------|
                           | - jobId                   |     | - matchId                   |
                           | - companyId               |     | - employeeId                |
                           | - title                   |     | - jobId                     |
                           | - description             |     | - status                    |
                           | - requirements            |     |-----------------------------|
                           | - location                |     | + createMatch()             |
                           | - salary                  |     | + updateStatus()            |
                           |---------------------------|     +-----------------------------+
                           | + createJob()             |
                           | + editJob()               |                 |
                           | + closeJob()              |                 |
                           +---------------------------+                 |
                                      ^                                  |
                                      |                                  |
                                      |                                  |
                                      |                                  |
                              +-------+--------+                         |
                              |    Application   |                       |
                              |----------------- |                       |
                              | - applicationId  |                       |
                              | - employeeId     |                       |
                              | - jobId          |                       |
                              | - status         |                       |
                              |------------------|                       |
                              | + applyForJob()  |                       |
                              | + updateApplicationStatus()|             |
                              +------------------+                       |
                                                                         |
                                                                         |
                                                                    +----+--------+
                                                                    |   Message    |
                                                                    |--------------|
                                                                    | - messageId  |
                                                                    | - senderId   |
                                                                    | - receiverId |
                                                                    | - matchId    |
                                                                    | - content    |
                                                                    | - timestamp  |
                                                                    |--------------|
                                                                    | + sendMessage()|
                                                                    | + viewMessageThread()|
                                                                    +----------------+
