# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 12:43
# FilePath: P0118. 杨辉三角.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    triangle = []
    (1..num_rows).each do |i|
        row = []
        (0...i).each do |j|
            if j == i - 1 or j == 0
                row << 1
            else
                row << triangle[i - 2][j - 1] + triangle[i - 2][j]
            end
        end
        triangle << row
    end
    triangle
end

if __FILE__ == $PROGRAM_NAME
    p generate(5)
end


