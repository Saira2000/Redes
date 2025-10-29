VPC_ID=$(aws ec2 create-vpc --cidr-block 192.168.0.0/24 --query Vpc.VpcId --output text \
    --tag-specifications ResourceType=vpc,Tags=[{Key=Name,Value=MyVpc}]\
    --query Vpc.VpcId  --output text)


#muestro la vpc
echo $VPC_ID

#habilitar dns en la vpc
aws ec2 modify--vpc-atribute \
    --vpc-id $VPC_ID \
    --enable-dns-hostnames "{\value\":tue}"
