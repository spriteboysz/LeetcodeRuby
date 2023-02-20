# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-20 23:21
# FilePath: P0033. 搜索旋转排序数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    nums.index(target) || -1
end

if __FILE__ == $PROGRAM_NAME
    p search(nums = [4, 5, 6, 7, 0, 1, 2], target = 0)
    p search(nums = [4, 5, 6, 7, 0, 1, 2], target = 8)
end


