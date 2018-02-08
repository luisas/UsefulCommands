
#Connect to machine
ssh -i key.pem ec2-user@$nameOfMachine

#copy to machine
scp  -i key.pem -r $file  ec2-user@$machine

#find id of processes running in the background
jobs
(for processes running by the current shell) 
ps -aux 
(all processes from other shells too)

#kill a process
kill $process

#how much memory 
df -h

#Run a process in the background
nohup bash myScript.sh myParam &

