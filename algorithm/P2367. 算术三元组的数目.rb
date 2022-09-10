# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:57
# FilePath: P2367. 算术三元组的数目.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer} diff
# @return {Integer}
def arithmetic_triplets(nums, diff)
    cnt, n = 0, nums.length
    (0..n - 1).each { |i|
        (i + 1..n - 1).each { |j|
            next if nums[j] - nums[i] != diff
            break if nums[j] - nums[i] > diff
            (j + 1..n - 1).each { |k|
                cnt += 1 if nums[k] - nums[j] == diff
                break if nums[k] - nums[j] > diff
            }
        }
    }
    cnt
end

p arithmetic_triplets(nums = [4, 5, 6, 7, 8, 9], diff = 2)



