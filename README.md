# Capstone project 

This repo provides the code for building, testing and deploying a flask application on Kubernetes cluster. The project consists of 3 Jenkins pipelines:
* Provide the Kubernetes cluster (1 master + 2 worker nodes) on AWS with ansible - **main branch**
* Build, test and run blue deployment - **blue branch**
* Build, test and run green deployment - **green branch**

## Getting Started

1. Install Jenkins server on AWS EC2 instance: 
- Select OS Ubuntu 18.04 and instance t2.medium.
- Create and download SSH key from AWS
- connect to your instance with the SSH key from above and install Jenkins:
```
sudo apt-get install -y default-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
```

2. Install Jenkins Plugins:
* Blue Ocean 
* Ansible
* CloudBees AWS Credentials Plugin
* Aqua MicroScanner

3. Install linux packages:
```
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible docker.io git tidy pylint python python3 python-pip
```

4. Install python packages:
```
pip install boto boto3 botocore openshift flask
```

5. Configure Jenkins:


### Build and test the Kubernetes environment

Login to Jenkins server and open Blue Ocean
```
Examples here
```

### Installation

Step by step explanation of how to get a dev environment running.

List out the steps

```
Give an example here
```

## Testing

Explain the steps needed to run any automated tests

### Break Down Tests

Explain what each test does and why

```
Examples here
```
## Project Instructions

This section should contain all the student deliverables for this project.

## Built With

* [Item1](www.item1.com) - Description of item
* [Item2](www.item2.com) - Description of item
* [Item3](www.item3.com) - Description of item

Include all items used to build project.

## License
[License](../LICENSE.md)

