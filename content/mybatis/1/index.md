---
title: "测试文档1"
subtitle: ""
date: 2022-11-25T18:57:46+08:00
draft: true
author: ""
authorLink: ""
authorEmail: ""
description: ""
keywords: ""
license: ""
comment: false
weight: 0
tags:
- mybatis
categories:
- mybatis

hiddenFromHomePage: false
hiddenFromSearch: false

summary: ""
resources:
- name: featured-image
  src: featured-image.jpg
- name: featured-image-preview
  src: featured-image-preview.jpg

toc:
  enable: true
math:
  enable: false
lightgallery: false
seo:
  images: []

repost:
  enable: true
  url: ""

# See details front matter: https://fixit.lruihao.cn/theme-documentation-content/#front-matter

---

<!--more-->

### 测试1

测试

- 多线程

```java
public class MyThread extends Thread { 
  public void run() { 
    System.out.println("MyThread.run()");
    }
}
MyThread myThread1 = new MyThread(); 
myThread1.start();
```

