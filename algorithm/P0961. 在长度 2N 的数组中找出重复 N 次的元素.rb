# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:35
# FilePath: P0961. 在长度 2N 的数组中找出重复 N 次的元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
        return num if hash[num] == nums.length / 2
    end
end

if __FILE__ == $PROGRAM_NAME
    p repeated_n_times([5, 1, 5, 2, 5, 3, 5, 4])
end
