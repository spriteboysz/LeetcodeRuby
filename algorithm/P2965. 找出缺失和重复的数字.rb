# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-12 22:26
# FilePath: P2965. 找出缺失和重复的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer[]}
def find_missing_and_repeated_values(grid)
    nums = [0] * (grid.length ** 2)
    grid.flatten.each { |num| nums[num - 1] += 1 }
    a, b = -1, -1
    nums.each_with_index { |num, i|
        a = i + 1 if num == 2
        b = i + 1 if num == 0
    }
    [a, b]
end

if __FILE__ == $PROGRAM_NAME
    p find_missing_and_repeated_values(grid = [[9, 1, 7], [8, 9, 2], [3, 4, 6]])
end


