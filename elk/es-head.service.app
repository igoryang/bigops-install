[Unit]
Description=elasticsearch-head
After=network.target

[Service]
PIDFile=/var/run/es-head.pid
ExecStart=cd /opt/es-head && ./node_modules/grunt/bin/grunt server
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s TERM $MAINPID
PrivateTmp=false

[Install]
WantedBy=multi-user.target