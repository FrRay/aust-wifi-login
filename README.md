# aust-wifi-login
- 安徽理工大学学生端wifi网关认证

# ~~使用~~（推荐新方法）
- 在[第11行和12行](https://github.com/FrRay/aust-wifi-login/blob/c655ba8628995f692876852eb3b1879f172a5fe3/main.py#L11)填写账号密码，连接AUST_Student后运行即可。

# 新方法

其实登录就是向路由器发个请求，先填好账号密码，直接书签，点一下就登陆了：

```txt
http://10.255.0.19/drcom/login?callback=dr1003&DDDDD=“学号@运营商”&upass=“密码”&0MKKey=123456
```
