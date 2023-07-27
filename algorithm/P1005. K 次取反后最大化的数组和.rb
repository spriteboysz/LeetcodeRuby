# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 23:27
# FilePath: P1005. K 次取反后最大化的数组和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(nums, k)
    nums.sort_by! { |num| -num.abs }
    nums.each_with_index { |num, i|
        if num < 0 && k > 0
            nums[i] *= -1
            k -= 1
        end
    }
    nums[-1] *= -1 if k % 2 == 1
    nums.sum
end

if __FILE__ == $PROGRAM_NAME
    p largest_sum_after_k_negations(nums = [2, -3, -1, 5, -4], k = 2)
end


