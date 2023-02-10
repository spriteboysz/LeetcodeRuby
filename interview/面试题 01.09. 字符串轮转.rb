# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 23:01
# FilePath: 面试题 01.09. 字符串轮转.rb
# Description:

load "common/leetcode.rb"

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def is_fliped_string(s1, s2)
    s1.length == s2.length && (s1 + s1).include?(s2)
end

if __FILE__ == $PROGRAM_NAME
    p is_fliped_string(s1 = "waterbottle", s2 = "erbottlewat")
end


