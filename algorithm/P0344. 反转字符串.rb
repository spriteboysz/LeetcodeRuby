# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:02
# FilePath: P0344. 反转字符串.rb
# Description: 

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    s.reverse!
    p s
end

reverse_string(s = %w[H a n n a h])



