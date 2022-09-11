# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:35
# FilePath: P1812. 判断国际象棋棋盘中一个格子的颜色.rb
# Description: 

# @param {String} coordinates
# @return {Boolean}
def square_is_white(coordinates)
    row, col = coordinates.chars
    (row.ord - 97 + col.to_i) % 2 == 0
end

p square_is_white(coordinates = "a1")
p square_is_white(coordinates = "a2")
p square_is_white(coordinates = "h3")



