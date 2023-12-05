# Deploy a Jenkins server

## Jenkins
Jenkins is a versatile open-source automation server, key for continuous integration and delivery. It automates development stages like build, test, and deployment while supporting numerous plugins. Its extensibility makes it a staple in modern CI/CD toolchains.

Jenkins excels in pipeline automation, allowing scripted workflows in various languages. It integrates seamlessly with version control systems, enabling automated builds upon code updates for a smoother workflow.  This boosts development efficiency and reliability.

In this tutorial we will deploy our Jenkins server using an Acorn image.

## What is Acorn? 
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Deploy Jenkins
On your acorn daashbaord click "Deploy Acorn".

!! deploy acorn

For the "Name" enter in Jenkins (or any variation you like).   <br>
For the "Acorn Image" enter `ghcr.io/randall-coding/acorn/jenkins`   <br>
Then click "Deploy".

## Setting up Jenkins
Let's start by jumping into the shell on [acorn.io](https://acorn.io).  Click the three vertial dots next to your app and click "Execute Shell" from the dropdown menu.

!! image of dropdown menu

In the shell window, type in the following command:

`cat /var/jenkins_home/secrets/initialAdminPassword`

Highlight the password output and right click to copy that value.

Click the Jenkins url listed in the "endpoints" sections of your acorn dashboard.  This should open up the Jenkins start page. 

Paste in the password you copied from the shell window and click "Continue".

On the next page create your admin account and make sure to remember the username and password.

!! admin account 

You will next be prompted to install plugins.  This configuration is up to you.

After installing plugins you should be able to login to your Jenkins dashboard.  

!! dashbaord

Congrats your Jenkins server is now up and running!

## References
* [Installing Jenkins](https://www.jenkins.io/doc/book/installing/)
* [Using Jenkins](https://www.jenkins.io/doc/book/using/)
* [Jenkins Pipeline](https://www.jenkins.io/doc/book/pipeline/)