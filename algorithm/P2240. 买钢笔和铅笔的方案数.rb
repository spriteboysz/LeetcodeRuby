# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 20:12
# FilePath: P2240. 买钢笔和铅笔的方案数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} total
# @param {Integer} cost1
# @param {Integer} cost2
# @return {Integer}
def ways_to_buy_pens_pencils(total, cost1, cost2)
    cnt = 0
    (0..total / cost1).each do |i|
        cnt += (total - i * cost1) / cost2 + 1
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p ways_to_buy_pens_pencils(total = 20, cost1 = 10, cost2 = 5)
end
