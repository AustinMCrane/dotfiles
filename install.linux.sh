echo "Update system...."
sudo apt-get update
echo "Installing git...."
sudo apt-get install git

echo "Installing nodejs...."

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installling docker..."

echo "\t Installing dependencies"
sudo apt-get install -y \
      apt-transport-https \
          ca-certificates \
              curl \
              software-properties-common

echo "\t adding gpl keys"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "\t verifying gpl keys"
sudo apt-key fingerprint 0EBFCD88

echo "\t installing docker"
sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
           stable"
sudo apt-get update
sudo apt-get install docker-ce

echo "Installing zsh..."
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s `which zsh`


echo "---- Done --- "
