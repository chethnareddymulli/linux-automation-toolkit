read -p "Enter new Username: " username
sudo adduser $username
sudo chage -d 0 $username

