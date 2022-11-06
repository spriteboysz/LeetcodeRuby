# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 17:13
# FilePath: P2379. 得到 K 个黑块的最少涂色次数.rb
# Description:

load "common/leetcode.rb"

# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
    minimum = k
    (0..blocks.size - k).each do |i|
        minimum = [minimum, blocks[i, k].count("W")].min
    end
    minimum
end

if __FILE__ == $PROGRAM_NAME
    p minimum_recolors(blocks = "WBBWWBBWBW", k = 7)
end
