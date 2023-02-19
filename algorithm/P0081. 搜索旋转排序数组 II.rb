# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 21:59
# FilePath: P0081. 搜索旋转排序数组 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
    nums.each do |num|
        return true if num == target
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p search(nums = [2, 5, 6, 0, 0, 1, 2], target = 0)
end


