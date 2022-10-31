# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-31 23:02
# FilePath: P2078. 两栋颜色不同且距离最远的房子.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} colors
# @return {Integer}
def max_distance(colors)
    cnt, n = 0, colors.size
    (0...n).each do |i|
        (i...n).each do |j|
            cnt = [cnt, j - i].max unless colors[i] == colors[j]
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p max_distance(colors = [1, 8, 3, 8, 3])
end
