apt-get update
apt-get install curl libunwind8 gettext apt-transport-https -y
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

wget -O azcopy.tar.gz https://aka.ms/downloadazcopylinux64
   24  tar -xf azcopy.tar.gz
   25  ls
   26  ./install.sh

postgres@test-postgres-vm:~/postgres/backups$ azcopy --source . --destination https://postgresqldumps.blob.core.windows.net/backup/ --dest-key lwIGa5tqMwqpJ5YGEksm29HJb1Uohf9poiBHp6BMbdjCUBqJ07VbVxXi4dwh+eW5snGwnEZd65HcOz4IGFeTig== --recursive

#kill azcopy
ps aux | grep [a]z |  awk '{print $2}' | xargs kill -9