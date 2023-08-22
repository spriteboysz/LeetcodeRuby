# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-21 22:42
# FilePath: P0200. 岛屿数量.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
    @grid = grid

    def dfs(x, y)
        m, n = @grid.size, @grid[0].size
        if x < 0 or x >= m or y < 0 or y >= n or @grid[x][y] == "0"
            return
        end
        @grid[x][y] = "0"
        dfs(x + 1, y)
        dfs(x - 1, y)
        dfs(x, y + 1)
        dfs(x, y - 1)
    end

    cnt = 0
    grid.each_with_index { |row, i|
        row.each_with_index { |num, j|
            if num == "1"
                cnt += 1
                dfs(i, j)
            end
        }
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p num_islands(grid = [
        ["1", "1", "0", "0", "0"],
        ["1", "1", "0", "0", "0"],
        ["0", "0", "1", "0", "0"],
        ["0", "0", "0", "1", "1"]
    ])
end


