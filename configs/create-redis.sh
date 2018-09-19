How to Install and Configure Redis Server on Debian 9
Introduction
Redis is a free, open source and high-performance in-memory data structure store that can be used as a database, cache, and message broker. Redis allows us to store information in the form of strings, hashes, lists, sets, sorted sets, bitmaps, geospatial indexes and hyperloglogs. Redis comes with redis-cli command line tool that provides a simple command-line interface to a Redis server. Redis also provides high availability via Redis Sentinel and automatic partitioning with Redis Cluster.
Features:
• Supports most POSIX systems like Linux, BSD, Mac OS X, and Solaris.
• Supports Pipelining of commands that allows you to use multiple values in a single command to speed up communication with the client libraries.
• Supports a lot of languages such as Java, JavaScript (Node.js), Julia, Lua, Objective-C, ActionScript, C, C++, C#, Clojure, Common Lisp, D, Dart and many more.
• Allows you to distribute the dataset across multiple Redis instances.
• Supports master-slave asynchronous replication and automatic failover.
In this tutorial, we are going to show you how to install, configure, and use Redis with Debian 9 on an Alibaba Cloud Elastic Compute Service (ECS) instance.
Requirements
• A fresh Alibaba Cloud ECS instance with Debian 9 installed.
• A root password is setup on your server.
Getting Started
Before starting, you are recommended to update your system package repository with the latest version.
Run the following command to update your system repository:
apt-get update -y
apt-get upgrade -y
Next, install the required packages by running the following command:
apt-get install wget curl build-essential tcl -y
Install Redis
You can install Redis server in two ways: install from Debian repository, or download Redis source, build, and install.
Install Redis from Repository
By default, Redis package is available in the Debian 9 repository. So you can easily install it by just running the following command:
apt-get install redis-server -y
Install Redis from Source
First, you will need to download the latest version of the Redis source from their official website:
wget http://download.redis.io/redis-stable.tar.gz
After downloading, extract the downloaded source with the following command:
tar -xvzf redis-stable.tar.gz
Next, change the directory to the Redis and compile Redis with the following command:
cd redis-stable
make
Once Redis is compiled, install Redis to your system with the following command:
make install
Configure Redis
Next, you will need to configure Redis for development environment. So, create a directory structure for Redis:
mkdir /etc/redis
mkdir /var/redis
Next, create Redis user and group with the following command:
adduser --system --group --no-create-home redis
Next, give Redis group and user ownership to the redis directory:
chown redis:redis /var/redis
chmod 770 /var/redis
Next, copy Redis sample configuration file from Redis source directory to the directory you have created above:
cp redis-stable/redis.conf /etc/redis/
Next, open Redis configuration file and make some changes as per your requirements:
nano /etc/redis/redis.conf
Make the following changes:
##Default port to listen reids. You can also change it as per your need.
port  6379
## If you run Redis from upstart or systemd.
supervised systemd
##Path of the Redis log.
logfile /var/log/redis.log
##Location of the Redis data.
dir  /var/redis/
##IP address to listen Redis on. You can also specify multiple IP address.
bind 192.168.0.101
Save and close the file when you are finished.
Create Redis Systemd File
Next, you will need to create a systemd file to control and manage Redis daemon.
You can do this by creating redis.service file:
nano /etc/systemd/system/redis.service
Add the following lines:
[Unit]
Description=Redis In-Memory Data Store
After=network.target
[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always
[Install]
WantedBy=multi-user.target
Save and close the file when you are finished. Then start Redis service with the following command:
systemctl start redis
Next, check the Redis service status, whether it is running or not:
systemctl status redis
If everything is going fine, you should see the following output:
● redis.service - Redis In-Memory Data Store
   Loaded: loaded (/etc/systemd/system/redis.service; disabled; vendor preset: enabled)
   Active: active (running) since Sat 2017-10-28 01:10:03 EDT; 1min 6s ago
 Main PID: 1063 (redis-server)
    Tasks: 4 (limit: 4915)
   CGroup: /system.slice/redis.service
           └─1063 /usr/local/bin/redis-server 127.0.0.1:6379
Test Redis
Once all the configuration is done properly, it’s time to test if the whole Redis setup is working fine.
Redis comes with redis-cli tool to manage a Redis server. You can connect the Redis server using the following command:
redis-cli
Once you have entered Redis environment, you should see the following output:
127.0.0.1:6379>
You can now test the server connectivity using ping command:
127.0.0.1:6379>ping
Output:
PONG
You can also use echo command to echo a given string:
127.0.0.1:6379>echo "Test Redis Server"
You should see the following output:
"Test Redis Server"
You can also store and retrieve any value with the following command:
127.0.0.1:6379> set test "Redis is working"
OK
Next, retrieve the stored value with the following command:
127.0.0.1:6379> get test
You should see the following output:
"Redis is working"
You can exit from the Redis shell any time with the following command:
127.0.0.1:6379>exit
You can also access and manage Redis server from remote machine, you will need to use -h option along with redis-cli command:
redis-cli -h 192.168.0.101
Note: 192.168.0.101 is a Redis Server IP address.
Secure Redis Server
By default, Redis allows to connect any user without a password. Redis is designed to be accessed by trusted clients inside trusted environments. So you are recommended to secure your Redis server with a password. So any clients need to be authenticated before accessing the database.
To enable Redis password authentication, you will need to generate a password using sha256sum:
echo "your-redis-password" | sha256sum
You should see the following output:
a453f41f929a3297289b68788b91d1454d91c71613416d14020c5206cc35579e -
Next, open the Redis default configuration file:
nano /etc/redis/redis.conf
Find the line “# requirepass foobared” and replace it with the following:
requirepass a453f41f929a3297289b68788b91d1454d91c71613416d14020c5206cc35579e
Save and close the file when you are finished. Then restart Redis service to apply these changes:
systemctl restart redis
Now, connect to Redis server and test connectivity with ping command:
redis-cli 
127.0.0.1:6379> ping
You should see the following Authentication error:
(error) NOAUTH Authentication required.
You will need to authenticate Redis server before running any command inside Redis shell.
To authenticate Redis server, run the following command:
127.0.0.1:6379>auth your-redis-password
If everything is working fine, you should see the following output:
OK
That’s it! You can now easily run any command inside Redis shell.
