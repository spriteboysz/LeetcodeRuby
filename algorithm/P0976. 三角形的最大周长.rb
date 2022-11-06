# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 20:07
# FilePath: P0976. 三角形的最大周长.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
    nums.sort!.reverse!
    (2...nums.size).each do |i|
        return nums[i - 2] + nums[i - 1] + nums[i] if nums[i] + nums[i - 1] > nums[i - 2]
    end
    0
end

if __FILE__ == $PROGRAM_NAME
    p largest_perimeter([2, 1, 2])
end
