# Shadowsocks
Shadowsocks 是一种基于Socks5代理方式的网络数据加密传输工具。Shadowsocks 分为服务器端和客户端，在使用之前，需要先将服务器端部署到服务器上面，然后通过客户端连接并创建本地代理。

# Run
默认加密方式 chacha20-ietf-poly1305
```
docker run -d -p 10000:10000/tcp -p 10000:10000/udp -e SSPASSWORD=<PASSWORD> silentyang/shadowsocks
```
修改加密方式
```
docker run -d -p 10000:10000/tcp -p 10000:10000/udp -e SSPASSWORD=<PASSWORD> -e SSMETHOD=<METHOD> silentyang/shadowsocks
```
Encrypt method: rc4-md5,
aes-128-gcm, aes-192-gcm, aes-256-gcm,
aes-128-cfb, aes-192-cfb, aes-256-cfb,
aes-128-ctr, aes-192-ctr, aes-256-ctr,
camellia-128-cfb, camellia-192-cfb,
camellia-256-cfb, bf-cfb,
chacha20-poly1305, chacha20-ietf-poly1305
salsa20, chacha20 and chacha20-ietf.

# Docs
https://github.com/shadowsocks/shadowsocks-libev

# Dockerfile
https://github.com/shadowsocks-docker/shadowsocks-docker
