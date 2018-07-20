#Phoenix framework on Debian Jessie

# Erlang
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang

# Elixir
sudo apt-get install elixir

# # nodejs (when using brunch)
# sudo apt-get install curl
# curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# sudo apt-get install -y nodejs

# postgresql
sudo apt-get install postgresql-client

# inotify-tools (dev)
sudo apt-get install inotify-tools

# if you get error: /usr/lib/erlang/erts-8.1/bin/beam: error while loading shared libraries: libsctp.so.1: cannot open shared object file: No such file or directory
#sudo apt-get install libsctp-dev

# Mix & Phoenix
mix local.hex
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez


# hello world
mix phoenix.new hello_phoenix
cd hello_phoenix
mix ecto.create
mix phoenix.server