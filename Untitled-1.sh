aws ec2 create-vpc --cidr-block 10.0.0.0/24 --query Vpc.VpcId --output text \
    --tag-specifications ResourceType=vpc,Tags=[{Key=Name,Value=MyVpc}]\
    --query Vpc.VpcId  --output text 

