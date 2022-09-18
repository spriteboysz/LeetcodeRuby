# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 10:44
# FilePath: P1903. 字符串中的最大奇数.rb
# Description:

load "common/leetcode.rb"

# @param {String} num
# @return {String}
def largest_odd_number(num)
    (num.length - 1).downto(0).each do |i|
        return num[..i] if num[i].to_i.odd?
    end
    ""
end

if __FILE__ == $PROGRAM_NAME
    p largest_odd_number(num = "35427")
    p largest_odd_number(num = "22468")
end
