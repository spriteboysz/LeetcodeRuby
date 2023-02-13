# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 22:33
# FilePath: P0912. 排序数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
    nums.sort
end

if __FILE__ == $PROGRAM_NAME
    p sort_array(nums = [5,2,3,1])
end


