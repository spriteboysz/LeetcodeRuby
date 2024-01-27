# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-18 23:02
# FilePath: P2824. 统计和小于目标的下标对数目.rb
# Description:

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def count_pairs(nums, target)
    cnt, n = 0, nums.length
    (0...n).each { |i|
        (i + 1...n).each { |j|
            cnt += 1 if nums[i] + nums[j] < target
        }
    }
    cnt
end

load "common/leetcode.rb"

if __FILE__ == $PROGRAM_NAME
    p count_pairs(nums = [-6, 2, 5, -2, -7, -1, 3], target = -2)
end


