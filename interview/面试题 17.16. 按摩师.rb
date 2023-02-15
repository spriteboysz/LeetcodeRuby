# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 23:12
# FilePath: 面试题 17.16. 按摩师.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def massage(nums)
    return nums[0] if nums.length == 1
    return 0 if nums.length == 0
    dp = [0] * (nums.length + 1)
    dp[0], dp[1] = 0, nums[0]
    (2..nums.length).each { |i|
        dp[i] = [nums[i - 1] + dp[i - 2], dp[i - 1]].max
    }
    dp[-1]
end

if __FILE__ == $PROGRAM_NAME
    p massage([2, 7, 9, 3, 1])
end


