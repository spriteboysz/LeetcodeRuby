# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 22:18
# FilePath: P2090. 半径为 k 的子数组平均值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def get_averages(nums, k)
    n = nums.length
    res = [-1] * n
    return res if n < 2 * k + 1
    pre_sum = [0] * (n + 1)
    nums.each_with_index do |num, i|
        pre_sum[i + 1] = pre_sum[i] + num
    end
    (k...n - k).each do |i|
        res[i] = (pre_sum[i + k + 1] - pre_sum[i - k]) / (2 * k + 1)
    end
    res
end

if __FILE__ == $PROGRAM_NAME
    p get_averages(nums = [7, 4, 3, 9, 1, 8, 5, 2, 6], k = 3)
end


