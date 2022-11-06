# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 16:06
# FilePath: P2016. 增量元素之间的最大差值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def maximum_difference(nums)
    maximum = -1
    nums.each_with_index do |num, i|
        (i + 1...nums.size).each do |j|
            maximum = [maximum, nums[j] - num].max if nums[j] > num
        end
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p maximum_difference([9, 4, 3, 2])
    p maximum_difference([1, 5, 2, 10])
end
