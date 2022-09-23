# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:47
# FilePath: P0594. 最长和谐子序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    maximum = 0
    hash.each_pair do |k, v|
        maximum = [maximum, v + hash[k + 1]].max if v * hash[k + 1] != 0
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p find_lhs(nums = [1, 3, 2, 2, 5, 2, 3, 7])
    p find_lhs(nums = [1, 1, 1, 1])
end
