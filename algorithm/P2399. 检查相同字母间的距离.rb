# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-31 23:09
# FilePath: P2399. 检查相同字母间的距离.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer[]} distance
# @return {Boolean}
def check_distances(s, distance)
    last = Array.new(26, 0)
    s.chars.each_with_index do |c, i|
        c = c.ord - 97
        return false if last[c] != 0 && i - last[c] != distance[c]
        last[c] = i + 1
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p check_distances(s = "aa",
                      distance = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
end
