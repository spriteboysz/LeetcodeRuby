# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 13:02
# FilePath: P1403. 非递增顺序的最小子序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def min_subsequence(nums)
    nums.sort_by! { |num| -num }
    sum, cur = nums.sum, 0
    nums.each_with_index { |num, i|
        cur += num
        return nums[0..i] if sum - cur < cur
    }
end

if __FILE__ == $PROGRAM_NAME
    p min_subsequence(nums = [4, 3, 10, 9, 8])
end


