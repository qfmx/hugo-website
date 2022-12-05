---
title: "主题设置"
subtitle: "基于Hugo的FixIt模板的一些设置"
date: 2022-11-24T18:57:46+08:00
draft: true
author: "阿猫会游泳"
authorLink: ""
authorEmail: ""
description: "愿时光待你温暖如初"
keywords: ""
license: ""
comment: false
weight: 0

tags:
- website
categories:
- 建站

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
---

# Example

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

- 子菜单配置

```markdown
---
title: "主题文档 - 基本概念"
author: "Lruihao"
menu:
  main:
    title: "探索 Hugo - FixIt 主题的全部内容和背后的核心概念。"
    parent: "documentation"
    params:
      icon: "fa-brands fa-readme"
---
...
```

