# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 22:55
# FilePath: P0451. 根据字符出现频率排序.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def frequency_sort(s)
    hash = Hash.new(0)
    s.chars.each { |c| hash[c] += 1 }
    s.chars.sort_by { |c| [-hash[c], c] }.join
end

if __FILE__ == $PROGRAM_NAME
    p frequency_sort(s = "Aabb")
    p frequency_sort(s = "loveleetcode")
end
