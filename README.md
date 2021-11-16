# Task2 Cloud Engineer Scenario 

This repository is about Task2 job opportunity as a Cloud engineer. 

The assignment consists of 2 tasks which are listed here. 

   1- Create a simple ‘Hello-World’ web application in any language or framework you
prefer: 

        ● Web application should return ‘hello-world’ via HTTP.
        ● Web application doesn’t need to have tests.
        ● Web application should compile/build via single command (e.g. ‘mvn install’ or ./build.sh)

   2- Create infrastructure and deploy the previously created web application
automatically to either AWS or locally (on your laptop). Any and all tools are allowed.

        ● Infrastructure creation and web application deployment should be done via one
command or script
        ● Create a README.md file that has all the information how to create the
infrastructure and deploy the web application



# Lets get started 
You need to install terraform and aws-iam-authenticator to perform this task. 

clone the repository and base on your needs change terraform variables in k8s/variables.tf , variables are self explanatory. 

There are two folders in this repository. init and k8s. 

        ● init: 
            Creates s3 bucket to hold terraform state file.

                cd init; terraform apply -auto-approve
        ● K8s:
            Creates EKS, PVC, OVH CNAME record and kubernetes resources such as Deployment,Service,Ingress. 

                cd k8s, terraform apply -auto-approve -var-file=~/.terraform.tfvars




# AWS and OVH Credentials variables  

I have chosen OVH as domain provider so a CNAME record is set on my personal domain. 

        application_key    = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
        application_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
        consumer_key       = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
        aws_access_key     = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
        aws_secret_key     = "xxxxxxxxxxxxxxxxxxxxxxxxxx"

Good Luck. 




