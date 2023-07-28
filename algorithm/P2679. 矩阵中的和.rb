# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 20:35
# FilePath: P2679. 矩阵中的和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} nums
# @return {Integer}
def matrix_sum(nums)
    nums.map { |row| row.sort }.transpose.map { |row| row.max }.sum
end

if __FILE__ == $PROGRAM_NAME
    p matrix_sum(nums = [[7, 2, 1], [6, 4, 2], [6, 5, 3], [3, 2, 1]])
end


