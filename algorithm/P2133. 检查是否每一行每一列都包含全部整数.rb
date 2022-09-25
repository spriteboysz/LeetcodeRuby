# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 14:33
# FilePath: P2133. 检查是否每一行每一列都包含全部整数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
    n = matrix.length
    row = matrix.map { |v| v.uniq.length == n }
    col = matrix.transpose.map { |v| v.uniq.length == n }
    [row, col].flatten.all?(true)
end

if __FILE__ == $PROGRAM_NAME
    p check_valid(matrix = [[1, 2, 3], [3, 1, 2], [2, 3, 1]])
end
