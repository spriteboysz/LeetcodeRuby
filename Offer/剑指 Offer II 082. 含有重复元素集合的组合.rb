# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 14:47
# FilePath: 剑指 Offer II 082. 含有重复元素集合的组合.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
    @path, @res = [], []
    candidates.sort!
    @visited = [false] * candidates.length

    def backtrace(start, sum, candidates, target)
        if sum == target
            @res << @path.clone
            return
        end
        (start...candidates.length).each { |i|
            next if i > 0 && candidates[i] == candidates[i - 1] && !@visited[i - 1]
            sum += candidates[i]
            return if sum > target
            @path << candidates[i]
            @visited[i] = true
            backtrace(i + 1, sum, candidates, target)
            @path.pop
            sum -= candidates[i]
            @visited[i] = false
        }
    end

    backtrace(0, 0, candidates, target)
    @res
end

if __FILE__ == $PROGRAM_NAME
    p combination_sum2(candidates = [10, 1, 2, 7, 6, 1, 5], target = 8)
end


