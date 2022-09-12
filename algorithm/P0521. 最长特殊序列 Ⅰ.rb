# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 20:25
# FilePath: P0521. 最长特殊序列 Ⅰ.rb
# Description: 

# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
    a == b ? -1 : [a.length, b.length].max
end

p find_lu_slength(a = "aaa", b = "bbb")



