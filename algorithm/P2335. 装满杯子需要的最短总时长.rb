# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/6 22:49
# FilePath: P2335. 装满杯子需要的最短总时长.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} amount
# @return {Integer}
def fill_cups(amount)
    [amount.max, (amount.sum + 1) / 2].max
end

if __FILE__ == $PROGRAM_NAME
    p fill_cups(amount = [1, 4, 2])
end


