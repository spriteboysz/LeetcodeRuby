# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-16 22:59
# FilePath: P2191. 将杂乱无章的数字排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} mapping
# @param {Integer[]} nums
# @return {Integer[]}
def sort_jumbled(mapping, nums)
    nums.sort_by do |num|
        num.to_s.chars.map { |c| mapping[c.to_i] }.map(&:to_s).join.to_i
    end
end

if __FILE__ == $PROGRAM_NAME
    p sort_jumbled(mapping = [8, 9, 4, 0, 2, 1, 3, 5, 7, 6], nums = [991, 338, 38])
end


