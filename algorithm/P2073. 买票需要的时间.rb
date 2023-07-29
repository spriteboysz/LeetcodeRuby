# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 21:54
# FilePath: P2073. 买票需要的时间.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
    i, time = 0, 0
    while tickets[k] > 0
        if tickets[i] != 0
            tickets[i] -= 1
            time += 1
        end
        i = (i + 1) % tickets.size
    end
    time
end

if __FILE__ == $PROGRAM_NAME
    p time_required_to_buy(tickets = [2, 3, 2], k = 2)
end


