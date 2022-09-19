# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 00:07
# FilePath: P0039. 组合总和.rb
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
    p combination_sum(candidates = [2, 3, 6, 7], target = 7)
end
