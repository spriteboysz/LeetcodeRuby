# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-18 22:41
# FilePath: P2946. 循环移位后的矩阵相似检查.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Boolean}
def are_similar(mat, k)
    k %= mat[0].length
    return true if k == 0
    mat.each { |row|
        return false unless row == row[k...] + row[...k]
    }
    true
end

if __FILE__ == $PROGRAM_NAME
    p are_similar(mat = [[1, 2, 1, 2], [5, 5, 5, 5], [6, 3, 6, 3]], k = 2)
end


