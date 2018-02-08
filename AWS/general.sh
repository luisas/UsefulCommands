
#Connect to machine
ssh -i key.pem ec2-user@$nameOfMachine

#copy to machine
scp  -i key.pem -r $file  ec2-user@$machine

