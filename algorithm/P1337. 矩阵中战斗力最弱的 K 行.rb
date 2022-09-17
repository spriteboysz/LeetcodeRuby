# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:57
# FilePath: P1337. 矩阵中战斗力最弱的 K 行.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
    hash = Hash.new(0)
    mat.each_with_index { |row, i| hash[i] = row.sum }
    hash.sort_by { |key, v| [v, key] }.map { |v| v[0] }[...k]
end

if __FILE__ == $PROGRAM_NAME
    p k_weakest_rows(mat = [[1, 0, 0, 0],
                            [1, 1, 1, 1],
                            [1, 0, 0, 0],
                            [1, 0, 0, 0]], k = 2)
end
