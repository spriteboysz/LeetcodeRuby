# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 20:11
# FilePath: P0830. 较大分组的位置.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
    range, start, n = [], 0, s.size
    (1...n).each { |pos|
        unless s[pos] == s[start]
            range << [start, pos - 1] if pos - start >= 3
            start = pos
        end
    }
    range << [start, n - 1] if n - start >= 3
    range
end

if __FILE__ == $PROGRAM_NAME
    p large_group_positions(s = "abcdddeeeeaabbbcd")
end


