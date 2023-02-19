# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 22:22
# FilePath: P0096. 不同的二叉搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def num_trees(n)
    dp = [1] + [0] * n
    (1..n).each do |i|
        (1..i).each do |j|
            dp[i] += dp[j - 1] * dp[i - j]
        end
    end
    dp[n]
end

if __FILE__ == $PROGRAM_NAME
    p num_trees(3)
end


