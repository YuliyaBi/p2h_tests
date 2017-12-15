# p2h_tests
  This is a website testing project https://psdtohtml.expert
On this site you can order to convert Your PSD or SKETCH  file into HTML.
Tests covered site functionality of the site and GUI.
 The p2h_tests project is hosted on GitHub, where you can find the test cases and the source code of automated tests. 
# Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.
## Prerequisites
 You need to install:
  * Chrome Driver
  * RobotFramework
  * Selenium2libriary
## Installation instruction for Ubuntu 16.04
### Installation Google Chrome
  To install Google Chrome, you will need to download the repository key, add the repository and update the package list:
 ```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
 ```
A stable version is recommended for installation. In order to install it, run:
```
sudo apt-get install google-chrome-stable

```
### Install ChromeDriven
```
wget -N http://chromedriver.storage.googleapis.com/2.34/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
sudo mv -f ~/chromedriver /usr/local/share/
sudo chmod +x /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
```
### Install 'pip' program
   You must have Python 2.7 in this version of Ubuntu. Let's install 'pip' program:

```
sudo apt install python-pip

```
### Install RobotFramework

```
pip install robotframework

```
### Install Selenium2Library

```
pip install robotframework-selenium2library

```
   
   
# Running the tests
To run the automated tests for this system you need to clone this repository to create a *local* copy on your computer 
 ```
git clone https://github.com/YuliyaBi/p2h_tests

 ```
and then to move in 'p2h_tests' directory and to run tests to write in command window:
 ```
robot file_name.robot
 ```
 




