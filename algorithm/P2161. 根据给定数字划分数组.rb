# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-18 21:52
# FilePath: P2161. 根据给定数字划分数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
    lt, gt, eq = [], [], []
    nums.each do |num|
        if num < pivot
            lt << num
        elsif num > pivot
            gt << num
        else
            eq << num
        end
    end
    lt + eq + gt
end

if __FILE__ == $PROGRAM_NAME
    p pivot_array(nums = [9, 12, 5, 10, 14, 3, 10], pivot = 10)
end


