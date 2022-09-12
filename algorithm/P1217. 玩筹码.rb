# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:44
# FilePath: P1217. 玩筹码.rb
# Description: 

# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
    even, odd = 0, 0
    position.each { |num|
        if num % 2 == 0
            even += 1
        else
            odd += 1
        end
    }
    [even, odd].min
end

p min_cost_to_move_chips(position = [2, 2, 2, 3, 3])
p min_cost_to_move_chips(position = [1, 1000000000])



