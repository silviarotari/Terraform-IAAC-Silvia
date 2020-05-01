#### VPC via Terraform

VPC:
- 3 Public Subnets/different AZs
- 3 Private Subnets/different AZs

Each resource should have the following softcoded tags on them
1. Name        = VPC_Project
2. Environment = IT
3. Department  = Dev
4. Team        = Infrastructure
5. Created_by  = Your_name

Public Subnets should have IGW attached 
Private Subnets should have NGW attached

RT - has to be done properly, and subnets should be associated with the route table

On top of Public Subnet create 1 ec2_instance with your bastion_key attached. The instance has to have SG that allows port 22 and 80.
Using terraform user_data.sh parameter install httpd in that instance.

The code is reusesable, it can run in any AWS Regions.


- terraform apply --var-file dev.tfvars

<img width="469" alt="Screen Shot 2020-04-30 at 2 56 51 PM" src="https://user-images.githubusercontent.com/57469926/80753473-f0822080-8af2-11ea-9f9c-d35631ca7e19.png">

- Output

<img width="579" alt="Screen Shot 2020-05-01 at 3 42 54 AM" src="https://user-images.githubusercontent.com/57469926/80794089-8dc66e80-8b5e-11ea-912a-fcbc42b9b9ec.png">

- Tags

<img width="757" alt="Screen Shot 2020-05-01 at 3 48 31 AM" src="https://user-images.githubusercontent.com/57469926/80794122-b0588780-8b5e-11ea-9a1b-dc4afd71c3ad.png">


<img width="1000" alt="Screen Shot 2020-04-30 at 12 23 35 PM" src="https://user-images.githubusercontent.com/57469926/80751875-325d9780-8af0-11ea-9345-e5d258537d62.png">

- terraform destroy --var-file dev.tfvars
