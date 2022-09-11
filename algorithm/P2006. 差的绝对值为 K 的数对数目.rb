# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 09:43
# FilePath: P2006. 差的绝对值为 K 的数对数目.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_k_difference(nums, k)
    cnt, n = 0, nums.length
    (0...n).each { |i|
        (i + 1...n).each { |j|
            cnt += 1 if (nums[i] - nums[j]).abs == k
        }
    }
    cnt
end

p count_k_difference(nums = [3, 2, 1, 5, 4], k = 2)

