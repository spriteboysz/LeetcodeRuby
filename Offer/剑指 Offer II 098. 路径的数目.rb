# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 23:16
# FilePath: 剑指 Offer II 098. 路径的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    row = Array.new(n, 1)
    (1...m).each do |_|
        cur = 1
        (1...n).each { |j|
            cur += row[j]
            row[j] = cur
        }
    end
    row.last
end

if __FILE__ == $PROGRAM_NAME
    p unique_paths(3, 7)
end
