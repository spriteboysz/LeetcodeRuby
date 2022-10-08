# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 21:19
# FilePath: P0791. 自定义字符串排序.rb
# Description:

load "common/leetcode.rb"

# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
    hash = Hash.new(-1)
    order.chars.each_with_index { |c, i| hash[c] = i }
    s.chars.sort_by { |c| hash[c] }.join
end

if __FILE__ == $PROGRAM_NAME
    p custom_sort_string(order = "ctag", s = "abed")
end
