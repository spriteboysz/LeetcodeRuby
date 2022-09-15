# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:11
# FilePath: 剑指 Offer II 088. 爬楼梯的最少成本.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
    n = cost.length
    dp = Array.new(n + 1, 0)
    (2..n).each { |i|
        dp[i] = [dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]].min
    }
    dp.last
end

if __FILE__ == $PROGRAM_NAME
    cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
    p min_cost_climbing_stairs(cost)
end




