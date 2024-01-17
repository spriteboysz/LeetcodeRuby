# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-17 22:21
# FilePath: P2873. 有序三元组中的最大值 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
    n, maximum = nums.length, 0
    (0...n).each { |i|
        (i + 1...n).each { |j|
            (j + 1...n).each { |k|
                maximum = [maximum, (nums[i] - nums[j]) * nums[k]].max
            }
        }
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p maximum_triplet_value(nums = [12, 6, 1, 2, 7])
end


