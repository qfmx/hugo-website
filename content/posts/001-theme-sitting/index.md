---
title: "主题的一些设置"
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

## 部署Example
```shell
hugo #部署prod环境
hugo -D #部署dev环境
hugo server #prod环境本地预览 localhost:1313
hugo server -D #dev环境本地预览 localhost:1313
```


## 横幅使用

{{< admonition >}} 一个 **注意** 横幅 {{< /admonition >}}

{{< admonition abstract >}} 一个 **摘要** 横幅 {{< /admonition >}}

{{< admonition info >}} 一个 **信息** 横幅 {{< /admonition >}} 

{{< admonition tip >}} 一个 **技巧** 横幅 {{< /admonition >}} 

{{< admonition success >}} 一个 **成功** 横幅 {{< /admonition >}} 

{{< admonition question >}} 一个 **问题** 横幅 {{< /admonition >}} 

{{< admonition warning >}} 一个 **警告** 横幅 {{< /admonition >}} 

{{< admonition failure >}} 一个 **失败** 横幅 {{< /admonition >}} 

{{< admonition danger >}} 一个 **危险** 横幅 {{< /admonition >}}

 {{< admonition bug >}} 一个 **Bug** 横幅 {{< /admonition >}} 

{{< admonition example >}} 一个 **示例** 横幅 {{< /admonition >}}

 {{< admonition quote >}} 一个 **引用** 横幅 {{< /admonition >}}