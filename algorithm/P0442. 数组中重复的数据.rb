# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:11
# FilePath: P0442. 数组中重复的数据.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    duplicates = []
    nums.each do |num|
        if nums[num.abs - 1] < 0
            duplicates << num.abs
        else
            nums[num.abs - 1] = -nums[num.abs - 1]
        end
    end
    duplicates
end

if __FILE__ == $PROGRAM_NAME
    nums = [4, 3, 2, 7, 8, 2, 3, 1]
    p find_duplicates(nums)
    p find_duplicates([2, 2])
end
