# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 22:46
# FilePath: P0001. 两数之和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = Hash.new(0)
    nums.each_with_index do |num, i|
        return [i, hash[target - num]] if hash.key?(target - num)
        hash[num] = i
    end
end

if __FILE__ == $PROGRAM_NAME
    p two_sum(nums = [3, 2, 4], target = 6)
end
