# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-24 23:07
# FilePath: P2740. 找出分区值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_value_of_partition(nums)
    nums.sort!
    minimum = nums[1] - nums[0]
    (2...nums.size).each { |i|
        minimum = [minimum, nums[i] - nums[i - 1]].min
    }
    minimum
end

if __FILE__ == $PROGRAM_NAME
    p find_value_of_partition(nums = [1, 3, 2, 4])
end


