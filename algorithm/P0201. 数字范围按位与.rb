# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 21:10
# FilePath: P0201. 数字范围按位与.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def range_bitwise_and(left, right)
    shift = 0
    while left < right
        left = left >> 1
        right = right >> 1
        shift += 1
    end
    left << shift
end

if __FILE__ == $PROGRAM_NAME
    p range_bitwise_and(left = 1, right = 2147483647)
end


