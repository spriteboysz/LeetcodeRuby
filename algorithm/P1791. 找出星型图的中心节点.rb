# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 13:54
# FilePath: P1791. 找出星型图的中心节点.rb
# Description: 

# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
    (edges[0][0] == edges[1][0] or edges[0][0] == edges[1][1]) ? edges[0][0] : edges[0][1]
end

p find_center(edges = [[1, 2], [5, 1], [1, 3], [1, 4]])



