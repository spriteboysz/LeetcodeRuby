# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 12:12
# FilePath: P0198. 打家劫舍.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    return 0 if nums.empty?
    return nums.first if nums.size == 1
    dp = Array.new(nums.size).fill(0)
    dp[0] = nums.first
    dp[1] = nums.first(2).max
    (2...nums.size).each { |i|
        dp[i] = [dp[i - 2] + nums[i], dp[i - 1]].max
    }
    dp.last
end

if __FILE__ == $PROGRAM_NAME
    p rob([2, 7, 9, 3, 1])
end


