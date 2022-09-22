# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:49
# FilePath: P0026. 删除有序数组中的重复项.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    (1...nums.length).each do |i|
        nums[i - 1] = nil if nums[i - 1] == nums[i]
    end
    nums.compact!
end

if __FILE__ == $PROGRAM_NAME
    nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    p remove_duplicates(nums)
end
