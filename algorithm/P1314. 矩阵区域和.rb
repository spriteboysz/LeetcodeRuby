# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-30 22:54
# FilePath: P1314. 矩阵区域和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[][]}
def matrix_block_sum(mat, k)
    @length, @width = mat.size, mat[0].size
    @pref = Array.new(@length + 1) { |_| Array.new(@width + 1).fill(0) }
    (0..@length).each { |i|
        (0..@width).each { |j|
            @pref[i][j] = @pref[i - 1][j] + @pref[i][j - 1] - @pref[i - 1][j - 1] + mat[i - 1][j - 1]
        }
    }

    def get(x, y)
        x, y = [[x, @length].min, 0].max, [[y, @width].min, 0].max
        @pref[x][y]
    end

    @block = Array.new(@length) { |_| Array.new(@width).fill(0) }
    (0...@length).each { |i|
        (0...@width).each { |j|
            @block[i][j] = get(i + k + 1, j + k + 1) - get(i - k, j + k + 1) - get(i + k + 1, j - k) + get(i - k, j - k)
        }
    }
    @block
end

if __FILE__ == $PROGRAM_NAME
    p matrix_block_sum(mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k = 1)
    p matrix_block_sum(mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k = 2)
end
