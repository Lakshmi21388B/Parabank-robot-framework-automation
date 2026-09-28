# ParaBank Automation Project

## About This Project

This project is part of my journey from manual Verification and Validation testing toward automation-focused QA engineering.

I created this project to gain hands-on experience in test automation and to understand how an automation project can be structured and maintained using Robot Framework and Selenium.

This is a Robot Framework + Selenium automation project for testing the ParaBank online banking application. The project includes individual feature tests as well as complete end-to-end banking flows.

## Project Goal

The goal of this project is to build a maintainable and reusable automation framework while gaining practical experience with:

- Robot Framework
- Selenium
- Test data
- Page Objects
- Reusable keywords
- UI testing
- End-to-end testing

## What This Project Covers
- User Registration
- User Login
- Account Creation
- Fund Transfer
- Transfer Result Validation
- End-to-End Testing
- Data-Driven Testing
- Reusable Test Keywords
- Page Object Model

## Example Test Flow
User Registration
       ↓
User Login
       ↓
Create Account
       ↓
Transfer Funds
       ↓
Validate Transfer Result

## Technologies Used
- Python
- Robot Framework
- SeleniumLibrary
- RobotCode
- Selenium

## Getting Started

Clone the project and open the project folder.
1. Create a virtual environment
** python -m venv .venv **

2. Activate the virtual environment
** .venv\Scripts\Activate.ps1 **

3. Install the required packages
** pip install -r requirements.txt **

4. Update the test variables
** Before running the tests, update the required test variables in Resources/Commonkeywords.robot. These variables contain the test data used by the ParaBank test cases.**

5. Run the tests
** robot --outputdir Results Tests **