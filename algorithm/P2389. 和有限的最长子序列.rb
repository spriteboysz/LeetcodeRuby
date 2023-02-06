# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/5 23:16
# FilePath: P2389. 和有限的最长子序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
    nums << 10**6 + 1
    nums.sort!
    (1...nums.length).each do |i|
        nums[i] += nums[i - 1]
    end
    queries.each_with_index do |query, i|
        nums.each_with_index do |num, j|
            if num > query
                queries[i] = j
                break
            end
        end
    end
    queries
end

if __FILE__ == $PROGRAM_NAME
    p answer_queries(nums = [4, 5, 2, 1], queries = [3, 10, 21])
end


