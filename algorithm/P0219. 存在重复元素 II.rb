# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 21:32
# FilePath: P0219. 存在重复元素 II.rb
# Description:

load "common/leetcode.rb"
require "set"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    s = Set.new
    (0..nums.length).each do |i|
        s.delete(nums[i - k - 1]) if i > k
        return true if s.include?(nums[i])
        s << nums[i]
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p contains_nearby_duplicate(nums = [1, 0, 1, 1], k = 1)
end
