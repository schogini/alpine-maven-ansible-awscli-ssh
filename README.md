# alpine-maven-ansible-awscli-ssh
Alpine Maven Ansible AWSCLI SSH


  docker run -dt -t container-name \
  --cap-add=SYS_TIME --cap-add=SYS_NICE \
  -e "AWS_ACCESS_KEY_ID=YOUR-AWS-KEY-D" \
  -e "AWS_SECRET_ACCESS_KEY=YOUR-AWS-SECRET-KEY" \
  -e "AWS_DEFAULT_REGION=YOUR-AWS-REGION" \
  -v $PWD/PATH-TO-YOUR-ANSIBLE-HOSTS-FILE:/etc/ansible/hosts \
  -v $PWD/ans/PATH-TO-YOUR-KEY-FILE:/root/.ssh/id_rsa \
  -v $PWD/PATH-TO-ANSIBLE-JAVA-SOURCE:/ans \
  schogini/alpine-maven-ansible-awscli-ssh

Run this once to sync time 

  docker exec -ti container-name ntpd -s

Place your playbooks in the Ansible Java Source folder say abc.yml Run playbook like this.

  docker exec -ti container-name ansible-playbook /ans/abc.yml

Maven is available in the path and can be executed like this..

  docker exec -ti container-name mvn package

Please secure your aws keys the vault instead of the environment variable method.
