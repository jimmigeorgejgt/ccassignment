# cloud computing assignment EC2 creation through terraform;images included for reference
configure CLI and terraform  run the following code 
<br />
to store the terraform state in local system exclude the following code in main
<br />
terraform {
<br />
  backend "s3" {
  <br />
    bucket         = "terrabackendassignment"
    <br />
    key            = "terraform-state"
    <br />
    region         = "us-east-1"
    <br />
  }
<br />  
run the following commands in terminal
<br />
1.terraform init (it will initialize terraform)
<br />
![](images/cc1.png)
<br />
2.terraform plan(it will determine the desired state of all the resources it declares, then compares that desired state to the real infrastructure objects being managed with the current working directory and workspace.)
<br />
3.terraform apply -var="instance_name=name_from_cmd1" (for overriding instance name through command line)
<br />
![](images/cc2.png)
<br />
ec2 instance named "name_from_cmd1" will be created
<br />
![](images/cc3.png)
<br />
![](images/cc4.png)
<br />
<br />
s3 as backend
<br />
create a bucket for storing terraform state by executing following command in terminal
<br />
1.aws s3api create-bucket --bucketbucket named "terrabackendassignment" will be createdt --region us-east-1
<br />
bucket named "terrabackendassignment" will be created
<br />
![](images/cc5.png)
<br />
to store terraform state include the following codes in main when running(already included in the uploaded file)
<br />
terraform {
<br />
  backend "s3" {
  <br />
    bucket         = "terrabackendassignment"
    <br />
    key            = "terraform-state"
    <br />
    region         = "us-east-1"
    <br />
  }
  <br />
run the following commands in terminal
<br />
1.terraform init (it will initialize terraform)
<br />
![](images/cc6.png)
<br />
2.terraform plan(it will determine the desired state of all the resources it declares, then compares that desired state to the real infrastructure objects being managed with the current working directory and workspace.)
<br />
3.terraform apply -var="instance_name=name_from_cmd2" (for overriding instance name through command line)
<br />
![](images/cc7.png)
ec2 instance named "name_from_cmd2" will be created and a bucket named"terrabackendassignment" will have the terraform state.
<br />
![](images/cc8.png)
<br />
![](images/cc9.png)
<br />
![](images/cc10.png)
