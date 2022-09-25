# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:32
# FilePath: 剑指 Offer 61. 扑克牌中的顺子.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def is_straight(nums)
    hash = Hash.new(0)
    maximum, minimum = 0, 14
    nums.each do |num|
        next if num == 0
        return false if hash[num] == 1
        hash[num] = 1
        maximum = [maximum, num].max
        minimum = [minimum, num].min
    end
    maximum - minimum + 1 <= 5
end

if __FILE__ == $PROGRAM_NAME
    p is_straight([1, 2, 3, 4, 5])
    p is_straight([0, 7, 1, 2, 3])
end
