# AWS-3-tier-architecture-on-aws-using-terraform

## Architecture Diagram

![AWS 3 Tier Architecture](./images/3tier-architecture.png)

## Project Summary
I built a **3-tier architecture on AWS using Terraform** to understand real-world DevOps and cloud infrastructure automation.

The architecture is divided into **Web, Application, and Database** layers to ensure **scalability, security, and high availability**.

---
## Project Summary
I built a **3-tier architecture on AWS using Terraform** to understand real-world DevOps and cloud infrastructure automation.

The architecture is divided into **Web, Application, and Database** layers to ensure **scalability, security, and high availability**.

---

## 🏗️ Architecture Overview

The infrastructure is divided into three layers:

### 1️⃣ Web Tier
- EC2 instances running in **public subnets**
- Exposed to the internet
- Managed using **Auto Scaling Group**
- Traffic handled by **Application Load Balancer (ALB)**

### 2️⃣ Application Tier
- EC2 instances running in **private subnets**
- Not directly accessible from the internet
- Handles application/business logic

### 3️⃣ Database Tier
- **Amazon RDS (MySQL)**
- Deployed in **private subnets**
- Secure and isolated from public access

---

## Technologies Used
- AWS (EC2, VPC, RDS, ALB, Auto Scaling)
- Terraform (Infrastructure as Code)
- Linux

---

## Interview Explanation (Simple Words)

> “This is a 3-tier AWS architecture built using Terraform.  
> The Web tier handles user requests, the Application tier processes logic, and the Database tier stores data.  
> All resources are created automatically using Terraform, making the setup scalable, secure, and easy to manage.”

---

## Key Learnings
- How to automate AWS infrastructure using Terraform
- How 3-tier architecture works in real projects
- How to manage networking, security groups, and scaling
- Hands-on experience with DevOps best practices

---

## Author
**Samarth Garde**
