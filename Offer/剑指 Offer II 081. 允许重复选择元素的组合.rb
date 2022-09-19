# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 00:01
# FilePath: 剑指 Offer II 081. 允许重复选择元素的组合.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
    arr = []
    1.upto((target / candidates.min).to_i).each do |i|
        arr += candidates.repeated_combination(i).select { |v| v.sum == target }
    end
    arr
end

if __FILE__ == $PROGRAM_NAME
    p combination_sum(candidates = [2, 3, 5], target = 8)
end
