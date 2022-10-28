# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-28 22:37
# FilePath: P1476. 子矩形查询.rb
# Description:

load "common/leetcode.rb"

class SubrectangleQueries

    # :type rectangle: Integer[][]
    def initialize(rectangle)
        @rectangle = rectangle
    end

    # :type row1: Integer
    # :type col1: Integer
    # :type row2: Integer
    # :type col2: Integer
    # :type new_value: Integer
    # :retype: Void
    def update_subrectangle(row1, col1, row2, col2, new_value)
        (row1..row2).each do |row|
            (col1..col2).each do |col|
                @rectangle[row][col] = new_value
            end
        end
    end

    # :type row: Integer
    # :type col: Integer
    # :retype: Integer
    def get_value(row, col)
        @rectangle[row][col]
    end
end

if __FILE__ == $PROGRAM_NAME
    subrectangle_queries = SubrectangleQueries.new([[1, 2, 1], [4, 3, 4], [3, 2, 1], [1, 1, 1]])
    p subrectangle_queries.get_value(0, 2)
    p subrectangle_queries.update_subrectangle(0, 0, 3, 2, 5)
    p subrectangle_queries.get_value(0, 2) # 返回 5
    p subrectangle_queries.get_value(3, 1) # 返回 5
    p subrectangle_queries.update_subrectangle(3, 0, 3, 2, 10)
    p subrectangle_queries.get_value(3, 1); # 返回 10
    p subrectangle_queries.get_value(0, 2); # 返回 5
end
