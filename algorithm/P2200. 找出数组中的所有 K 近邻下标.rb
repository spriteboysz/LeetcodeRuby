# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 20:52
# FilePath: P2200. 找出数组中的所有 K 近邻下标.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
    index, n = [], nums.size
    nums.each_with_index { |num, i|
        index << ([i - k, 0].max..[i + k, n - 1].min).to_a if num == key
    }
    index.flatten.uniq.sort
end

if __FILE__ == $PROGRAM_NAME
    p find_k_distant_indices(nums = [3, 4, 9, 1, 3, 9, 5], key = 9, k = 1)
end


