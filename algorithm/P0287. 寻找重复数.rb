# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-05 23:12
# FilePath: P0287. 寻找重复数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    hash = Hash.new(0)
    nums.each do |num|
        return num if hash[num] > 0
        hash[num] += 1
    end
end

if __FILE__ == $PROGRAM_NAME
    p find_duplicate(nums = [3, 1, 3, 4, 2])
end
