# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:06
# FilePath: P1528. 重新排列字符串.rb
# Description: 

# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
    ss = []
    s.chars.zip(indices).each { |c, i| ss[i] = c }
    ss.join("")
end

p restore_string(s = "codeleet", indices = [4, 5, 6, 7, 0, 2, 1, 3])



