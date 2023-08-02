# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-01 23:30
# FilePath: P2765. 最长交替子序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def alternating_subarray(nums)
    n, res = nums.size, -1
    (0...n - 1).each { |i|
        j, d = i, 1
        while j < n - 1 && nums[j + 1] - nums[j] == d
            res = [res, j - i + 2].max
            j += 1
            d = -d
        end
    }
    res
end

if __FILE__ == $PROGRAM_NAME
    p alternating_subarray(nums = [2, 3, 4, 3, 4])
end


