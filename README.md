# terraform-jenkins-d2
This repo has code related to Terraform intergration with Jenkins

## Build the jenkns server
```bash
gcloud compute instances create jenkins  --zone=us-west4-b --machine-type=e2-medium  --create-disk=auto-delete=yes,boot=yes,device-name=tomcatnew,image=projects/centos-cloud/global/images/centos-7-v20230615,mode=rw,size=20

# Install java
yum install java-11-openjdk.x86_64 -y

# Install Jenkins
yum install jenkins -y

# Verify Jenkins status
systemctl status jenkins

# Start Jenkins
systemctl start jenkins
```

* Create a PAT in github and configure in jenkins creds