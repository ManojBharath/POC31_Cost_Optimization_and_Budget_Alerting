# AWS Mini Project: Cost Optimization & Budget Alerting.

# Overview
This project demonstrates how to monitor AWS costs using AWS Budgets and receive alerts via SNS when spending exceeds a defined threshold.

# Objective
* Set up cost budget alerts for sandbox environment
* Get email notifications when budget limits are crossed

# Services Used
* AWS Budgets
* Amazon SNS
* AWS Billing Console
* EC2 / S3 (for simulation)

# Architecture
AWS Resources → Billing → AWS Budgets → SNS → Email Alerts

# Implementation Steps

Step 1: Enable Billing Alerts
* Go to Billing Console
* Enable "Receive Billing Alerts"

Step 2: Create SNS Topic
* Create topic: `budget-alert-topic`
* Add email subscription
* Confirm via email

Step 3: Create Budget
* Budget Type: Cost Budget
* Monthly Budget: $5

Step 4: Configure Alerts
* 80% threshold
* 100% threshold
* Link SNS topic

Step 5: Tag Resources (Optional)
Key: Name
Value: testing

# Testing
* Launch EC2 instance
* Upload files to S3
* Wait for billing update

# Expected Outcome
* Email alerts when:

  * 80% budget reached
  * 100% budget exceeded

# Notes
* Billing updates may take 24 hours
* SNS email must be confirmed

 
