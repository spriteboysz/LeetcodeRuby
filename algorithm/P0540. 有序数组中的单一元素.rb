# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 16:47
# FilePath: P0540. 有序数组中的单一元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
    single = 0
    nums.each { |num|
        single ^= num
    }
    single
end

if __FILE__ == $PROGRAM_NAME
    p single_non_duplicate([1, 1, 2, 3, 3, 4, 4, 8, 8])
end


