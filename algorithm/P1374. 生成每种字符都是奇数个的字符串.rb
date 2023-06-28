# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:50
# FilePath: P1374. 生成每种字符都是奇数个的字符串.rb
# Description: 

# @param {Integer} n
# @return {String}
def generate_the_string(n)
    ss = "a" * (n - 1)
    ss = ss + (n % 2 == 0 ? "b" : "a")
    ss
end

p generate_the_string(4)
p generate_the_string(5)



