# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 09:27
# FilePath: P1512. 好数对的数目.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    cnt, n = 0, nums.length
    (0...n).each { |i|
        (i + 1...n).each { |j|
            cnt += 1 if nums[i] == nums[j]
        }
    }
    cnt
end

p num_identical_pairs(nums = [1, 1, 1, 1])



