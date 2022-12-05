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

# Location Bat File

```bash
@echo off 
hugo -D
git add .
git commit -m "update blog"
git push
pause 
```



---

> 作者: [阿猫会游泳](https://allms.cn/about)  
> URL: https://allms.cn/002-website-sync/  

