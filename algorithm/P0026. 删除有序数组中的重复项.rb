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
    return nums.length if nums.length < 2
    (nums.length-1).downto(0) do |index|
        nums.delete_at(index) if nums.index(nums[index]) != index
    end
    nums.length
end

if __FILE__ == $PROGRAM_NAME
    nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    p remove_duplicates(nums)
    p remove_duplicates([1])
end
