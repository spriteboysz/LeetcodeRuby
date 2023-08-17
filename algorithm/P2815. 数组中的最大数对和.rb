# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-17 22:54
# FilePath: P2815. 数组中的最大数对和.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {Integer}
def max_sum(nums)
    maximum = -1
    nums.each_index { |i|
        nums.each_index { |j|
            next if i <= j
            if nums[i].to_s.chars.max == nums[j].to_s.chars.max
                maximum = [maximum, nums[i] + nums[j]].max
            end
        }
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_sum(nums = [51, 71, 17, 24, 42])
end


