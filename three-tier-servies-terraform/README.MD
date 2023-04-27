My Approach for this task - 

 TASK - to create a three tier environemnt 
 Approach - 
  I wanted to create an environemnt with vm instance and db instance connected to VPC. 
  DB instance should be in private subnet and connect in ynternet gateway to reach internet. 
  whereas vm instance in public subnet via Terraform on gcloud.
  
  But i couldn't because this setup require proper time, account and R&D. some error solving time too.
  For now, I have uploaded basic teraform code to create VM instance, Db instance and VCP with subnets and route( Network for environment)
 
