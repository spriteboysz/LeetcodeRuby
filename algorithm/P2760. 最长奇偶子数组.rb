# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-17 23:36
# FilePath: P2760. 最长奇偶子数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} threshold
# @return {Integer}
def longest_alternating_subarray(nums, threshold)
    i, maximum = 0, 0
    while i < nums.length
        if nums[i] % 2 != 0 or nums[i] > threshold
            i += 1
            next
        end
        j, tmp = i + 1, 0
        while j < nums.length
            if nums[j] % 2 != tmp and nums[j] <= threshold
                tmp = nums[j] % 2
                j += 1
            else
                break
            end
        end
        maximum = [maximum, j - i].max
        i = j
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p longest_alternating_subarray(nums = [3, 2, 5, 4], threshold = 5)
end


