# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 22:53
# FilePath: P2038. 如果相邻两个颜色均相同则删除当前颜色.rb
# Description:

load "common/leetcode.rb"

# @param {String} colors
# @return {Boolean}
def winner_of_game(colors)
    cnt, n = 0, colors.size
    (0...n - 2).each { |i|
        cnt += 1 if colors[i, 3] == "AAA"
        cnt -= 1 if colors[i, 3] == "BBB"
    }
    cnt > 0
end

if __FILE__ == $PROGRAM_NAME
    p winner_of_game(colors = "AAABABB")
end


