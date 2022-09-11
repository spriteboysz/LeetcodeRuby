# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:30
# FilePath: P2176. 统计数组中相等且可以被整除的数对.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
    cnt = 0
    (0...nums.length).each { |i|
        (i + 1...nums.length).each { |j|
            cnt += 1 if nums[i] == nums[j] && (i * j) % k == 0
        }
    }
    cnt
end

p count_pairs(nums = [3, 1, 2, 2, 2, 1, 3], k = 2)



