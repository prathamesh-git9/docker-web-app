pk@Omen:~$ ssh -i "MyNewKeyPair2.pem" ec2-user@3.249.93.127
A newer release of "Amazon Linux" is available.
  Version 2023.6.20241028:
  Version 2023.6.20241031:
Run "/usr/bin/dnf check-release-update" for full release and version update info
   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####  ~~     \###|
  ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
sudo dnf update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
exit
docker --version
docker run hello-world
sudo amazon-linux-extras install epel -y
sudo yum install ansible -y
ansible --version
mkdir ~/ansible-playbooks
cd ~/ansible-playbooks
nano docker-setup.yml
---
- name: Setup Docker and run a web application
  hosts: localhost
  become: yes
  tasks:
    - name: Ensure Docker is installed
      yum:
        name: docker
        state: present
    - name: Start Docker service
      service:
        name: docker
        state: started
    - name: Pull the Nginx Docker image
      docker_image:
        name: nginx
        pull: yes
    - name: Run Nginx container
      docker_container:
        name: my-nginx
        image: nginx
        state: started
        ports:
          - "80:80"
ansible-playbook docker-setup.yml
sudo service docker status
sudo yum upgrade ansible -y
sudo pip install docker
sudo yum install python3-pip -y
nano ~/ansible-playbooks/docker-setup.yml
ansible-playbook ~/ansible-playbooks/docker-setup.yml
nano ~/ansible-playbooks/docker-setup.yml
ansible-playbook ~/ansible-playbooks/docker-setup.yml
nano ~/ansible-playbooks/docker-setup.yml
ansible-galaxy collection install community.docker
ansible-playbook your_playbook.yml -vvv
ansible-playbook docker-setup.yml -vvv
nano docker-setup.yml
ansible-playbook docker-setup.yml
nano docker-setup.yml
ansible-playbook docker-setup.yml
nano docker-setup.yml
ansible-playbook docker-setup.yml
docker images
docker run -d -p 80:80 nginx
docker ps
mkdir terraform-ec2-setup
cd terraform-ec2-setup
exit
docker ps
docker rm 1e420e058eef
docker stop 1e420e058eef
docker rm 1e420e058eef
sudo lsof -i :80
exit
sudo yum update -y
sudo amazon-linux-extras install docker
sudo install docker
sudo apt install docker
sudo yum install -y docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
exit
docker --version
docker ps
exit
mkdir docker-web-app
cd docker-web-app
nano app.js
npm -v
sudo install npm
sudo yum install -y npm
npm init -y  # Initializes a Node.js project with default values
npm install express  # Installs the express package
nano Dockerfile
docker build -t docker-web-app .
docker run -p 8080:8080 docker-web-app
nano package.json
docker build -t docker-web-app .
docker run -p 8080:8080 docker-web-app
ls
docker login
ls
docker tag docker-web-app prathemesh7744/docker-web-app:latest
docker push prathemesh7744/docker-web-app:latest
docker pull your-dockerhub-username/docker-web-app:latest
docker pull prathemesh7744/docker-web-app:latest
docker run -d -p 80:8080 prathemesh7744/docker-web-app:latest
sudo lsof -i :80
docker ps  # To list all running containers
docker stop <container_id_or_name>  # Replace with the container ID or name occupying port 80
docker ps  # To list all running containers
docker stop fc7f9c52c3f6  # Replace with the container ID or name occupying port 80
docker run -d -p 8081:8080 prathemesh7744/docker-web-app:latest
docker ps
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/prathamesh-git9/docker-web-app.git
git push -u origin main
