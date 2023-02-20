# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-20 23:57
# FilePath: P0628. 三个数的最大乘积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
    nums.sort!
    [nums[0] * nums[1] * nums[-1], nums[-1] * nums[-2] * nums[-3]].max
end

if __FILE__ == $PROGRAM_NAME
    p maximum_product([1, 2, 3, 4])
end


