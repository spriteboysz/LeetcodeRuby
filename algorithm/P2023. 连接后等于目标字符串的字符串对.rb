# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 23:14
# FilePath: P2023. 连接后等于目标字符串的字符串对.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} nums
# @param {String} target
# @return {Integer}
def num_of_pairs(nums, target)
    cnt = 0
    nums.each_with_index do |num1, i|
        nums.each_with_index { |num2, j|
            next if i == j
            cnt += 1 if num1 + num2 == target
        }
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p num_of_pairs(nums = %w[123 4 12 34], target = "1234")
end
