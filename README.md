# Jenkins CICD project along with maven, docker


Project Objective:

As part of my DevOps learning journey, I created this project to gain hands-on experience with Jenkins for implementing CI/CD pipelines. Since I am already familiar with Docker, I incorporated it into the project as well.

The project involves a Java web application, which I deploy on a Tomcat server using various DevOps tools and technologies, including two virtual machines on VirtualBox, Git, GitHub, Jenkins, Maven, and Docker.


I began by creating a virtual machine on VirtualBox and installed CentOS Stream 10 (Coughlan) as the operating system.

Next, I installed Java and Jenkins on the VM.

After setting up Jenkins, I configured the firewall to allow access through port 8080, enabling me to reach the Jenkins web interface.

For this, I installed firewalld on the VM and added a rule to allow traffic on port 8080.

To integrate GitHub with Jenkins, I installed Git on the VM and added the GitHub Integration Plugin through the Jenkins GUI.

To enable Maven integration with Jenkins, I installed Maven on the VM and configured the Maven Plugin within Jenkins

I created another virtual machine on VirtualBox for Docker host

Installed docker on another VM and enabled, and started docker.
  

created a new user for Docker management and added him to Docker (default) group

Wrote a Docker file to install tomcat server under /opt/docker I could use dockerfile at any location in the centos file system. However, opt serves as a designated location for installing add-on software packages that are not part of the base system. that's why i choose it


I logged into the Jenkins console and configured it to communicate with the Docker server for executing commands:

Manage Jenkins → Configure System → Publish over SSH → Added the Docker server along with its credentials.

Next, I created a Jenkins job to automate the deployment process.

After executing the Jenkins job, I verified on the virtual machine (where Docker is installed) that a Docker image and container were successfully created by the job.

Finally, I accessed the web application through a browser, which was running inside the Docker container
