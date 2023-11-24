for component in frontend mongodb catalogue ; do
aws ec2 run-instances --image-id ami-03265a0778a880afb --instance-type t3.micro --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${component}}]"
done
