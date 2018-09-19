root@stage-ui-vm:/root/go/src/github.com/synechron-finlabs/quorum-maker-nodemanager# go build main.go

cat /etc/systemd/system/blockchain-go.service
[Unit]
Description=Blockchain backend servie
After=network.target

[Service]
Type=simple
User=root
Group=root
ExecStart=/root/go/src/github.com/synechron-finlabs/quorum-maker-nodemanager/main
Restart=always

[Install]
WantedBy=multi-user.target

systemctl enable blockchain-go.service