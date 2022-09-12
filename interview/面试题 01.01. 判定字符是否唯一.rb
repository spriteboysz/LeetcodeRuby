# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 23:07
# FilePath: 面试题 01.01. 判定字符是否唯一.rb
# Description: 

# @param {String} astr
# @return {Boolean}
def is_unique(astr)
    astr.chars.uniq.length == astr.length
end

p is_unique(s = "leetcode")



