# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:16
# FilePath: LCR 135. 报数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} cnt
# @return {Integer[]}
def count_numbers(cnt)
    nums = []
    (1...10**cnt).each { |i| nums << i }
    nums
end

if __FILE__ == $PROGRAM_NAME
    p count_numbers(2)
end


