# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-01 22:55
# FilePath: P1582. 二进制矩阵中的特殊位置.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} mat
# @return {Integer}
def num_special(mat)
    cnt = 0
    mat2 = mat.transpose
    (0...mat.size).each do |i|
        (0...mat[0].size).each do |j|
            cnt += 1 if mat[i][j] == 1 && mat[i].sum == 1 && mat2[j].sum == 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p num_special([[1, 0, 0],
                   [0, 1, 0],
                   [0, 0, 1]])
    p num_special(mat = [[0, 0, 0, 1], [1, 0, 0, 0], [0, 1, 1, 0], [0, 0, 0, 0]])
    p num_special([[0, 0, 0, 0, 0],
                   [1, 0, 0, 0, 0],
                   [0, 1, 0, 0, 0],
                   [0, 0, 1, 0, 0],
                   [0, 0, 0, 1, 1]])
end
