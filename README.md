# aust-wifi-login
> 安徽理工大学学生端wifi网关认证，其实登录认证就是向路由器发个post请求。校园网速率不高，下载大文件不如手机开热点

### 方法一：收藏书签
填好账号密码，新建浏览器书签，什么设备都能用。若显示`return 1`代表登录成功，反之，`return 0`就代表wifi还没连上，请连好重试。

```txt
http://10.255.0.19/drcom/login?callback=dr1003&DDDDD=“学号@运营商”&upass=“密码”&0MKKey=123456
```

### 方法二：添加脚本到电脑开机启动
将修改好的`AUST_WIFI.bat`放到电脑`启动`目录：`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup`
开机运行，脚本会尝试登录若干次，比较省事，缺点网卡有时候不行，没登上就用方法一。

### 方法三：python登录
- 非常不推荐，当时脑抽了才会想到用代码发段明文post。

在`main.py`的[第11行和12行](https://github.com/FrRay/aust-wifi-login/blob/c655ba8628995f692876852eb3b1879f172a5fe3/main.py#L11)填写账号密码，连接AUST_Student后运行即可。
