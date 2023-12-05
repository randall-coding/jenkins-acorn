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
On your acorn dashbaord click "Deploy Acorn".

![acorn_deploy_button](https://github.com/randall-coding/jenkins-acorn/assets/39175191/608032e9-d402-49ba-ac04-0f532c4c5b69)

Then click "From Acorn Image"

![acorn_deploy_options](https://github.com/randall-coding/jenkins-acorn/assets/39175191/825f3acd-2eb7-457f-88b1-960085a18801)

In the next for, fill in Jenkins (or any variation you like) for "Name".   <br>
For the "Acorn Image" enter `ghcr.io/randall-coding/acorn/jenkins`   <br>
Then click "Deploy".

![acorn_deploy_form](https://github.com/randall-coding/jenkins-acorn/assets/39175191/b41e622e-decf-40d2-b83b-c8caa3b4bc75)

## Setting up Jenkins
Let's start by jumping into the shell on [acorn.io](https://acorn.io).  Click the three vertial dots next to your app and click "Execute Shell" from the dropdown menu.

![acorn_view_logs](https://github.com/randall-coding/jenkins-acorn/assets/39175191/c310568e-24e3-42ef-87fa-ee43935fc13d)

In the shell window, type in the following command:

`cat /var/jenkins_home/secrets/initialAdminPassword`

Highlight the password output and right click to copy that value.

Click the Jenkins url listed in the "endpoints" sections of your acorn dashboard.  This should open up the Jenkins start page. 

![jenkins_endpoints](https://github.com/randall-coding/jenkins-acorn/assets/39175191/8edbc8c0-1030-4984-9ae2-bf5a7f5c8fbe)

Paste in the password you copied from the shell window and click "Continue".

On the next page create your admin account with username and password.

![jenkins_admin_form](https://github.com/randall-coding/jenkins-acorn/assets/39175191/33abbca5-cbed-4451-b6d4-27b6d978ebd8)

You will be prompted to install plugins.  This configuration is up to you.  See the reference material for more information.

![jenkins_install_plugins](https://github.com/randall-coding/jenkins-acorn/assets/39175191/d80eb00e-07dd-489d-ac36-bf53d3f37103)

After installing plugins you should be able to login to your Jenkins dashboard.  

![jenkins_dashboard](https://github.com/randall-coding/jenkins-acorn/assets/39175191/c1d9c484-6207-4fdc-bb51-a57edbf2f76b)

Congrats your Jenkins server is now up and running!

## References
* [Installing Jenkins](https://www.jenkins.io/doc/book/installing/)
* [Using Jenkins](https://www.jenkins.io/doc/book/using/)
* [Jenkins Pipeline](https://www.jenkins.io/doc/book/pipeline/)
