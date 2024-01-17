# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-15 22:37
# FilePath: P2908. 元素和最小的山形三元组 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def minimum_sum(nums)
    minimum, n = nums.sum + 1, nums.length
    (0...n).each { |i|
        (i + 1...n).each { |j|
            (j + 1...n).each { |k|
                minimum = [minimum, nums[i] + nums[j] + nums[k]].min if nums[i] < nums[j] and nums[j] > nums[k]
            }
        }
    }
    minimum == nums.sum + 1 ? -1 : minimum
end

if __FILE__ == $PROGRAM_NAME
    p minimum_sum(nums = [5, 4, 8, 7, 10, 2])
end


