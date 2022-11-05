#!/bin/sh

# install go
curl -OL https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
rm ~/go*.tar.gz

# install lazygit
/usr/local/go/bin/go install github.com/jesseduffield/lazygit@latest

# install gotop
/usr/local/go/bin/go install github.com/xxxserxxx/gotop/v4/cmd/gotop@latest
