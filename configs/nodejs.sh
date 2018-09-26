curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

## Run `sudo apt-get install -y nodejs` to install Node.js 10.x and npm
## You may also need development tools to build native addons:
     sudo apt-get install gcc g++ make
## To install the Yarn package manager, run:
     curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
     sudo apt-get update && sudo apt-get install yarn

# To compile and install native addons from npm you may also need to install build tools:

sudo apt-get install -y build-essential

sudo npm install -g create-react-app
create-react-app my-app
cd my-app && yarn start &

## придумать системд или супервизор для ноджс

sudo apt-get install nginx

sudo systemctl enable nginx


