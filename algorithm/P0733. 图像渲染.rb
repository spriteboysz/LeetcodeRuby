# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 19:31
# FilePath: P0733. 图像渲染.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
    def dfs(image, sr, sc, color, old)
        n, m = image.size, image[0].size
        if image[sr][sc] == old
            image[sr][sc] = color
            dfs(image, sr - 1, sc, color, old) if sr - 1 >= 0
            dfs(image, sr + 1, sc, color, old) if sr + 1 < n
            dfs(image, sr, sc - 1, color, old) if sc - 1 >= 0
            dfs(image, sr, sc + 1, color, old) if sc + 1 < m
        end
    end

    old = image[sr][sc]
    return image if image[sr][sc] == color
    dfs(image, sr, sc, color, old)
    image
end

if __FILE__ == $PROGRAM_NAME
    p flood_fill(image = [[1, 1, 1], [1, 1, 0], [1, 0, 1]], sr = 1, sc = 1, color = 2)
end


