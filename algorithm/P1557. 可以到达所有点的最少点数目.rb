# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:29
# FilePath: P1557. 可以到达所有点的最少点数目.rb
# Description: 

# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def find_smallest_set_of_vertices(n, edges)
    dst = []
    edges.each { |edge| dst.append(edge[1]) }
    dst.uniq!
    target = Array.new(n) { |e| e }
    dst.each { |i| target[i] = -1 }
    target.select { |x| x >= 0 }
end

p find_smallest_set_of_vertices(n = 5, edges = [[0, 1], [2, 1], [3, 1], [1, 4], [2, 4]])



