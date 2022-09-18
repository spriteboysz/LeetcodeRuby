# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 10:20
# FilePath: P2264. 字符串中最大的 3 位相同数字.rb
# Description:

load "common/leetcode.rb"

# @param {String} num
# @return {String}
def largest_good_integer(num)
    ret = ""
    0.upto(9).each do |n|
        ret = (n.to_s * 3) if num.include?(n.to_s * 3)
    end
    ret
end

if __FILE__ == $PROGRAM_NAME
    p largest_good_integer(num = "2300019")
end
