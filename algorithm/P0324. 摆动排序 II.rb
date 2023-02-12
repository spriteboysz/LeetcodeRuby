# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 14:35
# FilePath: P0324. 摆动排序 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def wiggle_sort(nums)
    sorted = nums.sort.reverse
    i, j = 1, 0
    while i < nums.length
        nums[i] = sorted[j]
        i, j = i + 2, j + 1
    end
    i = 0
    while i < nums.length
        nums[i] = sorted[j]
        i, j = i + 2, j + 1
    end
    nums
end

if __FILE__ == $PROGRAM_NAME
    p wiggle_sort([1, 5, 1, 1, 6, 4])
end


