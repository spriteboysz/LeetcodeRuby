# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:11
# FilePath: P0069. x 的平方根.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    0.upto(x).each do |i|
        return i if i * i == x
        return i - 1 if i * i > x
    end
end

if __FILE__ == $PROGRAM_NAME
    p my_sqrt(8)
    p my_sqrt(0)
end
