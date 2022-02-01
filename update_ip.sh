#!/bin/bash
EC2_private_IP=`aws ec2 describe-instances --instance-ids i-08e176bc09cf6dd97 --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text`
cat << EOF >> /etc/ansible/hosts
$EC2_private_IP
EOF
