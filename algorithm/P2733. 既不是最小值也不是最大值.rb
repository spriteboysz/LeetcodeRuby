# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 19:13
# FilePath: P2733. 既不是最小值也不是最大值.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {Integer}
def find_non_min_or_max(nums)
    minimum = nums.min
    maximum = nums.max
    nums.each do |num|
        return num if num != minimum && num != maximum
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p find_non_min_or_max(nums = [3, 2, 1, 4])
end


