# ccassignment
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
2.terraform apply -var="instance_name=name_from_cmd1" (for overriding instance name through command line)
<br />
ec2 instance named "name_from_cmd1" will be created
<br />
###s3 as backend
<br />
create a bucket for storing terraform state by executing following command in terminal
<br />
1.aws s3api create-bucket --bucketbucket named "terrabackendassignment" will be createdt --region us-east-1
<br />
bucket named "terrabackendassignment" will be created
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
2.terraform apply -var="instance_name=name_from_cmd2" (for overriding instance name through command line)
<br />
ec2 instance named "name_from_cmd2" will be created and a bucket named"terrabackendassignment" will have the terraform state.
