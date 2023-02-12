# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 21:51
# FilePath: P0090. 子集 II.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
    subsets = Set.new
    (0..nums.length).each do |i|
        subsets += Set.new(nums.combination(i).to_a.map(&:sort))
    end
    subsets.to_a
end

if __FILE__ == $PROGRAM_NAME
    p subsets_with_dup(nums = [1, 2, 2, 1])
end


