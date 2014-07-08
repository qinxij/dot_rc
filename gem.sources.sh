#! /bin/bash

# replace the gem sources
gem sources --remove https://rubygems.org/

gem sources -a http://ruby.taobao.org/

# gem sources -l       #用来查看source list
