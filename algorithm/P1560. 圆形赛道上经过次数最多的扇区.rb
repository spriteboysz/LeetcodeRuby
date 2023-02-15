# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 22:40
# FilePath: P1560. 圆形赛道上经过次数最多的扇区.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer[]} rounds
# @return {Integer[]}
def most_visited(n, rounds)
    s, e = rounds[0], rounds[-1]
    return (s..e).to_a if s <= e
    ret = []
    (1..e).each { |v|
        ret << v
    }
    (s..n).each { |v|
        ret << v
    }
    ret
end

if __FILE__ == $PROGRAM_NAME
    p most_visited(n = 4, rounds = [1, 3, 1, 2])
end


