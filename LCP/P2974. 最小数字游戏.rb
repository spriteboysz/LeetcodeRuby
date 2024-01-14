# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-12 22:21
# FilePath: P2974. 最小数字游戏.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def number_game(nums)
    nums.sort!
    nums.each_index { |i|
        nums[i], nums[i + 1] = nums[i + 1], nums[i] if i % 2 == 0
    }
    nums
end

if __FILE__ == $PROGRAM_NAME
    p number_game(nums = [5, 4, 2, 3])
end


