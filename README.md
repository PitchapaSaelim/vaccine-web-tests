# Vaccine Web Tests
*by Pitchapa Sae-lim*

Tests Using [Robot Framework](https://robotframework.org/) for [3AM app](https://vaccine-haven.herokuapp.com/).

> App to Test: [3AM app](https://vaccine-haven.herokuapp.com/)

***

## Test Cases for 3AM app
| Test Case ID | Test Case Name | Description | Expected Result | Status |
|--------------|----------------|-------------|-----------------|--------|
|1| `Can Open to Home Page` | Test that the app can navigate to the home page. | The user can open the home page.|✔️:PASS |
|2| `Verify Home Page Contains Register Link` | Test that the home page contains the register link to navigate to registration page. | The home page contains the register link.|✔️:PASS |
|3| `Verify Home Page Contains Reserve Vaccine Button` | Test that the home page contains the reserve vaccine button to navigate to vaccine reservation page. | The home page contains the reserve vaccine button.|✔️:PASS |
|4| `Can Created Reservation` | Test that the reservation can created. | The user can create the reservation.|✔️:PASS |
|5| `Reservation Created Successfully` | Test that the reservation created successfully. | The reservation was created and contains in the info page.|✔️:PASS |
|6| `Can Canceled Reservation` | Test that the reservation can canceled. | The user can cancel the reservation. |✔️:PASS |
|7| `Reservation Canceled Successfully` | Test that the reservation canceled successfully. | The reservation was canceled and not contains in the info page.|✔️:PASS |

***

## How to run tests
### How to dowload chromedriver and set path to your machine
* Check your chrome version
    * Go to `Chrome Settings` > Go to `About Chrome` > *See your version*
* Dowload the version of ChromeDriver that matches your version
    * [ChromeDriver - WebDriver for Chrome - Downloads](https://chromedriver.chromium.org/downloads)
* Set `path` of ChromeDriver to your machine
    * [Windows](https://www.java.com/en/download/help/path.html)
    * [MacOS](https://www.cyberciti.biz/faq/appleosx-bash-unix-change-set-path-environment-variable/)
### How to clone [Vaccine Web Tests](https://github.com/PitchapaSaelim/vaccine-web-tests)
* Access to a command-line/terminal window.
    * Linux:
        ```
        CTRL-ALT-T or CTRL-ALT-F2
        ``` 
    * Windows: 
        ``` 
        WIN+R > type powershell > Enter/OK or Type in search tap "cmd"
        ```
    * MacOS: 
        ```
        Finder > Applications > Utilities > Terminal
        ```
* Change directory to the directory that the user wants to run the application.
    ```
    cmd> cd directory name
    ```
* Use git clone in the command line. (Link to clone the project `https://github.com/PitchapaSaelim/vaccine-web-tests.git`)
    ```
    cmd> git clone https://github.com/PitchapaSaelim/vaccine-web-tests.git
    ```

### Steps needed to configure the tests for running
* Access to a command-line/terminal window.
* Change directory to the directory that contain `vaccine-web-tests` folder.
    ```
    cmd> cd vaccine-web-tests
    ```
* Install the require packages for this project.
    ```
    cmd> pip install -r requirements.txt
    ``` 
    > Description of the require packages
    * **robotframework-seleniumlibrary** is a web testing library for Robot Framework. This document explains how to use keywords provided by SeleniumLibrary.

### How to run the tests and verify it is working
1. **Dowload ChromeDriver** [*See how to dowload chromedriver and set path to your machine*.](https://github.com/PitchapaSaelim/vaccine-web-tests#how-to-dowload-chromedriver-and-set-path-to-your-machine)
1. **Clone** vaccine web tests to your machine. [*See how to clone the tests.*](https://github.com/PitchapaSaelim/vaccine-web-tests#how-to-clone-vaccine-web-tests)
2. Follows the [**steps needed to configure the tests for running**](https://github.com/PitchapaSaelim/vaccine-web-tests#steps-needed-to-configure-the-tests-for-running).
3. Access to a command-line/terminal window.
    * Run the tests
        * Linux/MacOS:
            ```
            $ robot test_service_taker_web_apps.robot
            ```
        * Windows:
            ```
            ...\> robot test_service_taker_web_apps.robot
            ``` 
            * Terminal window will look like this:
                ``` 
                ==============================================================================
                Test Service Taker Web Apps :: Vaccine Web Tests
                ==============================================================================
                Can Open to Home Page
                DevTools listening on ws://127.0.0.1:1450/devtools/browser/36dc2ffe-68aa-4553-a6e2-ba6ad9c0d22d
                Can Open to Home Page                                                 | PASS |
                ------------------------------------------------------------------------------
                Verify Home Page Contains Register Link                               | PASS |
                ------------------------------------------------------------------------------
                Verify Home Page Contains Reserve Vaccine Button                      | PASS |
                ------------------------------------------------------------------------------
                .
                .
                .
                ``` 

4. Stop the tests
    * Exit the terminal window
        * Linux/MacOS: Press `CTRL + C` button
        * Windows: Press `CTRL + C` button

***

## Q & A
* Which do you think is a better framework for E2E testing of web applications or web services: Robot Framework or Cucumber with Selenium/HTTP library and JUnit?

    > **Answer:** In my opinion, I think **Robot Framework** is better than Cucumber with Selenium/HTTP library and JUnit because it's a test that has instructions to use to create a test that is easy to read, understand, and clear, although some syntax is maybe a little more complicated but it has a document that clearly provides information and examples of use. It is also a test that is suitable for testing clear and concrete application web pages and testing even the smallest details on that page as well.

***

## Tutorial or online resource(s)
* [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
* [Selenium2Library](https://robotframework.org/Selenium2Library/Selenium2Library.html#Open%20Browser)
* [Robot Framework Quick Start Guide](https://github.com/robotframework/QuickStartGuide/blob/master/QuickStart.rst)
* [มาเริ่มต้นเขียน Automate Robot Framework with SeleniumLibrary และ ทำ Workshop Login Facebook กันเถอะ](https://iamgique.medium.com/%E0%B8%A1%E0%B8%B2%E0%B9%80%E0%B8%A3%E0%B8%B4%E0%B9%88%E0%B8%A1%E0%B8%95%E0%B9%89%E0%B8%99%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%99-automate-robot-framework-with-selenium2library-%E0%B9%81%E0%B8%A5%E0%B8%B0-%E0%B8%97%E0%B8%B3-workshop-login-facebook-cbcbbcc6abf8) (*This is a Thai website that I use to understand the structure of Robot Framework. I think this website is well explained, clear, and easy to understand.*)
* [Robot Framework by jbrucker](https://github.com/VAV2021/VAV2021/blob/master/robot-framework.md) (*Your repository is also helpful for me to access other sources because you've collected almost all of them.*)