# 从0到1搭建一个手动本地脚本同步网站


## 开篇

你必须选择一个静态网站，如Hexo、VuePress、Hugo等作为博客模板，我选择的**Hugo**作为模板，本文教程也是基于Hugo进行的，这里我更建议使用它。当然，使用其他模板也是可以的，步骤简直是一模一样。

## 搭建本地博客

- 环境需求：WIndows 10 或者 WIndows 11，条件好的用Mac也是阔以滴，如果你使用的是Mac，你可以去别的地方百度了，这儿使用的是Windows作为本地环境哦
- 下载Hugo.exe文件。管网：https://github.com/hugo-fixit/FixIt
- 然后安装官方文档搭建即可

## Web Hooks

>  npm i github-webhook-handler

```js
var http = require('http')
var createHandler = require('github-webhook-handler')
var handler = createHandler({ path: '/webhook', secret: 'myhashsecret' })
 
http.createServer(function (req, res) {
  handler(req, res, function (err) {
    res.statusCode = 404
    res.end('no such location')
  })
}).listen(7777)
 
handler.on('error', function (err) {
  console.error('Error:', err.message)
})
 
handler.on('push', function (event) {
  console.log('Received a push event for %s to %s',
    event.payload.repository.name,
    event.payload.ref)
})
 
handler.on('issues', function (event) {
  console.log('Received an issue event for %s action=%s: #%d %s',
    event.payload.repository.name,
    event.payload.action,
    event.payload.issue.number,
    event.payload.issue.title)
})
```

本站的webhooks

```js
var http = require('http')
var createHandler = require('github-webhook-handler')
var handler = createHandler({ path: '/hugo', secret: 'hugo-sdfssd11' })
// 上面的 secret 保持和 GitHub 后台设置的一致

function run_cmd(cmd, args, callback) {
    var spawn = require('child_process').spawn;
    var child = spawn(cmd, args);
    var resp = "";

    child.stdout.on('data', function (buffer) { resp += buffer.toString(); });
    child.stdout.on('end', function () { callback(resp) });
}

http.createServer(function (req, res) {

    handler(req, res, function (err) {
        res.statusCode = 404
        res.end('no such location')
    })
}).listen(7005,() =>{
    console.log('WebHooks Listern at 7005');
})
handler.on('push', function (event) {
  console.log('Received a push event for %s to %s',
    event.payload.repository.name,
    event.payload.ref);
    // 分支判断
  if(event.payload.ref === 'refs/heads/main'){
      console.log('deploy master..')
      run_cmd('sh', ['./deploy.sh'], function(text){ console.log(text) });
  }
})
```

## 关闭TCP Port

**重要**：先去关闭安全组，再关闭防火墙。

**重要**：先去关闭安全组，再关闭防火墙。

**重要**：先去关闭安全组，再关闭防火墙。

```shell
firewall-cmd --add-port=3306/tcp        # 开放通过tcp访问3306
firewall-cmd --remove-port=80tcp        # 阻止通过tcp访问3306
firewall-cmd --add-port=233/udp         # 开放通过udp访问233
firewall-cmd --list-ports               # 查看开放的端口
```



# Location Bat File

```bash
@echo off 
hugo -D
git add .
git commit -m "update blog"
git push
pause 
```

## Repo

[qfmx/hugo-website: 我的网站 (github.com)](https://github.com/qfmx/hugo-website)



---

> 作者: [阿猫会游泳](https://allms.cn/about)  
> URL: https://allms.cn/002-website-sync/  

