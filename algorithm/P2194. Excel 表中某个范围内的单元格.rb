# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:44
# FilePath: P2194. Excel 表中某个范围内的单元格.rb
# Description: 

# @param {String} s
# @return {String[]}
def cells_in_range(s)
    cells = []
    col1, row1, col2, row2 = s[0], s[1], s[3], s[4]
    (col1..col2).each { |col|
        (row1..row2).each { |row|
            cells.append(col + row)
        }
    }
    cells
end

p cells_in_range(s = "K1:L2")



