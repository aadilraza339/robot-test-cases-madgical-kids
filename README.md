# Robot Framework Test Cases

## Overview

This Robot Framework test suite is designed to test the various test cases to ensure the functionality of the application.

## Prerequisites

Before running these tests, make sure you have the following installed:

- [Python](https://www.python.org/downloads/)
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
- [RequestsLibrary](https://github.com/bulkan/robotframework-requests)

You can install Robot Framework and the required libraries using pip:


## How to Run the Tests

1. Clone this repository to your local machine:

```
git clone https://github.com/aadilraza339/robot-test-cases-madgical-kids.git
```
2. Navigate to the project directory:
```
cd robot-test-cases-madgical-kids
```
3 Run the test cases
```
robot madgical-kids-news.robot 
```

The test results will be displayed in the terminal, and log and report files will be generated in the `output` directory.

## Test Cases

### 1. Open the URL and Take a Screenshot

This test case opens a web page, waits for an element to become visible, captures a screenshot, and then closes the browser.

### 2. Category tests

This test case opens a web page, checks the number of elements matching an XPath expression, compares it to an expected count, and logs category names.

### 3. Articles card Count

This test case opens a web page, checks the number of elements matching an XPath expression, and compares it to an expected count.

### 4. Open an Article

This test case opens a web page, waits for an element to become visible, and clicks on it to open an article.
