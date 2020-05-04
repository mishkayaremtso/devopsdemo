To build 3 instances with terrfaform:
terraform init
terraform plan
terraform apply
#enable creating instaces in your gcp 
terraform apply


ssh connection

in master instance
cd .ssh
ssh-keygen 
cat id_rsa.pub 
# copy your key

go to second instance
cd .ssh
nano authorized_keys 
#paste your key
save


go to master instance
ssh "ip of second instance"
 
run jenkins 
sudo docker exec <container> cat /var/jenkins_home/secrets/initialAdminPassword

to crearte new node/agent https://support.cloudbees.com/hc/en-us/articles/222978868-How-to-Connect-to-Remote-SSH-Agents- 

create new job with freestyle project with this github project url or yours with your monitoring system 
exec comands for job:
cd devopsdemo
git pull
sudo docker-compose restart

