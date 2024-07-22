# screenrc
start script for screen jobs

## 使用方法

添加 screen job 启动脚本

```bash
$ cd screenrc/
$ chmod +x ./add_rc.sh ./reset_screen.sh
$ ./add_rc.sh s001_speedtest
```
```add_rc.sh``` 用于生成 screen 启动脚本，使用时给定 screen 会话名：

```$ ./add_rc.sh <screen_name>```

脚本会在 rc_job 目录下会生成两个文件，带 rc 的是启动脚本，不带 rc 的是 screen 会话中执行的脚本，根据需要修改 screen 执行脚本。

rc 脚本可以单独执行，也可使用 ```reset_screen.sh``` 批量调用。

```reset_screen.sh``` 脚本用于重启 screen 脚本，在脚本中通过 screen 会话名调用。

## 注意

screen 会话名不要使用纯数字命名，会影响脚本判断，推荐使用以下命名规则：

```bash
$ ./add_rc.sh s001_speedtest
$ ./add_rc.sh s002_p8080
$ ./add_rc.sh s003_pdf_server
```
