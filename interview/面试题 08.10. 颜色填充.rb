# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-21 22:59
# FilePath: 面试题 08.10. 颜色填充.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
    return image if image[sr][sc] == new_color
    m, n = image.size, image[0].size
    check = Proc.new { |x, y| x >= 0 && x < m && y >= 0 && y < n }
    stack = [[sr, sc]]
    old_color = image[sr][sc]
    until stack.empty?
        i, j = stack.pop
        image[i][j] = new_color
        [[0, 1], [0, -1], [1, 0], [-1, 0]].each { |dx, dy|
            x, y = i + dx, j + dy
            stack << [x, y] if check.call(x, y) && image[x][y] == old_color
        }
    end
    image
end

if __FILE__ == $PROGRAM_NAME
    p flood_fill(image = [[1, 1, 1], [1, 1, 0], [1, 0, 1]], sr = 1, sc = 1, new_color = 2)
end


