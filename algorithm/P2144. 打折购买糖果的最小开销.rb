# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-16 23:45
# FilePath: P2144. 打折购买糖果的最小开销.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
    cost.sort_by! { |x| -x }
    res = 0
    (0...cost.length).step(3).each do |i|
        res += cost[i, 2].sum
    end
    res
end

if __FILE__ == $PROGRAM_NAME
    p minimum_cost([6, 5, 7, 9, 2, 2])
end


