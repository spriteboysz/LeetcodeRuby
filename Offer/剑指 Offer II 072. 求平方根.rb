# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:07
# FilePath: 剑指 Offer II 072. 求平方根.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    (0..x).each do |i|
        return i if i * i == x
        return i - 1 if i * i > x
    end
end

if __FILE__ == $PROGRAM_NAME
    p my_sqrt(x = 8)
    p my_sqrt(x = 0)
end
