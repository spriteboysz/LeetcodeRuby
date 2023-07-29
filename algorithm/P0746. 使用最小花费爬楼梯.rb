# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 23:01
# FilePath: P0746. 使用最小花费爬楼梯.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
    dp = []
    (cost.length + 1).times { |i|
        dp << [i - 2 < 0 ? 0 : (dp[i - 2] + cost[i - 2]), i - 1 < 0 ? 0 : (dp[i - 1] + cost[i - 1])].min
    }
    dp.last
end

if __FILE__ == $PROGRAM_NAME
    p min_cost_climbing_stairs(cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1])
end


