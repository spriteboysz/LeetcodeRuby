# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 17:50
# FilePath: P0075. 颜色分类.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    p0, cur, p2 = 0, 0, nums.length - 1
    while cur <= p2
        if nums[cur] == 0
            nums[p0], nums[cur] = nums[cur], nums[p0]
            p0 += 1
            cur += 1
        elsif nums[cur] == 2
            nums[p2], nums[cur] = nums[cur], nums[p2]
            p2 -= 1
        else
            cur += 1
        end
    end
    nums
end

if __FILE__ == $PROGRAM_NAME
    p sort_colors([2, 0, 2, 1, 1, 0])
end


