# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 23:07
# FilePath: P0645. 错误的集合.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    a, b = 0, 0
    (1..nums.length).each do |num|
        a = num if hash[num] == 2
        b = num if hash[num] == 0
        break if a * b != 0
    end
    [a, b]
end

if __FILE__ == $PROGRAM_NAME
    p find_error_nums(nums = [1, 2, 2, 4])
end
