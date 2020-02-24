#secure-ssh.sh
#author william
#creates a new user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
user=$1
sudo useradd -m -d /home/$user -s /bin/bash $user
sudo mkdir /home/$user/.ssh
sudo cp /home/william/Tech_Journal/SYS265/linux/public-keys/id_rsa.pub /home/$user/.ssh/authorized_keys
sudo chmod 700 /home/$user/.ssh
sudo chmod 600 /home/$user/.ssh/authorized_keys
sudo chown -R $user:$user /home/$user/.ssh
