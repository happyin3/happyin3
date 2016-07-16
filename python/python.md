# Python

## 常用工具

### 环境设置

autoenv

### 多版本管理

pyenv

> **如果网络不太好，用pyenv下载会比较慢。可以自己到官网下载，然后将文件放在`～／.pyenv/cache`目录下（不存在，新建即可）。pyenv会检查文件的完整性，若确认无误，则不会再重新下载，直接解包编译安装。**
>
> **参考资料**
>>
>> * [yyuu/pyenv](https://github.com/yyuu/pyenv)
>> * [python 多版本管理（pyenv）](http://www.178linux.com/23588)

### 虚拟环境

virtualenv

### 编码风格

PEP8

### 编码风格检查

flake8

### 单元测试

unittest

### 异常追踪

traceback

### 日志

logging

### 性能分析

cProfile

### 文档

Sphinx

### 云服务器

Heroku

> **Heroku的免费版除了其提供的Postgres数据库有限制之外（小于1万条记录的小型数据库不用付费就可以添加到自己的Web应用中），其它都可以免费使用。**
>
> **参考资料**
>>
>> [如何部署Python Web应用：记录一次Heroku部署完整过程](https://yq.aliyun.com/articles/40785#)
