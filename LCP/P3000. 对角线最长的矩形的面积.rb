# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-12 22:13
# FilePath: P3000. 对角线最长的矩形的面积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} dimensions
# @return {Integer}
def area_of_max_diagonal(dimensions)
    dimensions.sort_by! { |x| [x[0] * x[0] + x[1] * x[1], x[0] * x[1]] }
    dimensions[-1][0] * dimensions[-1][1]
end

if __FILE__ == $PROGRAM_NAME
    p area_of_max_diagonal(dimensions = [[8, 6], [9, 3]])
end


