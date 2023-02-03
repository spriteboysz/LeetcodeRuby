# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 22:52
# FilePath: P2317. 操作后的最大异或和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def maximum_xor(nums)
    res = 0
    nums.each { |num|
        res |= num
    }
    res
end

if __FILE__ == $PROGRAM_NAME
    p maximum_xor(nums = [3, 2, 4, 6])
end


