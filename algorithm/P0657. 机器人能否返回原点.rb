# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:52
# FilePath: P0657. 机器人能否返回原点.rb
# Description: 

# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
    horizontal, vertical = 0, 0
    moves.chars.each { |move|
        horizontal += 1 if move == "R"
        horizontal -= 1 if move == "L"
        vertical += 1 if move == "U"
        vertical -= 1 if move == "D"
    }
    horizontal == 0 && vertical == 0
end

p judge_circle(moves = "UD")
p judge_circle(moves = "LL")



