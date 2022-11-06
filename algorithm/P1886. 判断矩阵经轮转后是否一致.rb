# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 17:39
# FilePath: P1886. 判断矩阵经轮转后是否一致.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} mat
# @param {Integer[][]} target
# @return {Boolean}
def find_rotation(mat, target)
    return true if mat == target
    (0...3).each do |_|
        mat = mat.reverse.transpose
        return true if mat == target
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p find_rotation(mat = [[0, 0, 0], [0, 1, 0], [1, 1, 1]],
                    target = [[1, 1, 1], [0, 1, 0], [0, 0, 0]])
end
