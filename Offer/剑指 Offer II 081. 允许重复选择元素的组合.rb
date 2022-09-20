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
    @res = []
    candidates.sort!
    backtrace(target, [], candidates, 0)
    @res
end

def backtrace(target, path, nums, index)
    if target == 0
        @res << path
        return
    end
    return if target < 0

    nums.each_with_index do |num, i|
        break if num > target
        next if i < index
        backtrace(target - num, path + [num], nums, i)
    end
end

if __FILE__ == $PROGRAM_NAME
    p combination_sum(candidates = [2, 3, 5], target = 8)
end
