# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-01 22:48
# FilePath: P1925. 统计平方和三元组的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def count_triples(n)
    cnt, square = 0, []
    (1..n).each do |k|
        square << k * k
    end
    (1..n).each do |i|
        (1..n).each do |j|
            cnt += 1 if square.include?(i * i + j * j)
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_triples(10)
end
