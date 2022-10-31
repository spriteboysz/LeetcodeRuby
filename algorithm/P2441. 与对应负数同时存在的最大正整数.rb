# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-31 23:55
# FilePath: P2441. 与对应负数同时存在的最大正整数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_max_k(nums)
    hash = Hash.new(false)
    nums.each do |num|
        hash[num] = true
    end
    nums.sort.reverse_each do |num|
        return num if hash[-num]
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p find_max_k(nums = [-1, 10, 6, 7, -7, 1])
    p find_max_k(nums = [-10, 8, 6, 7, -2, -3])
end
