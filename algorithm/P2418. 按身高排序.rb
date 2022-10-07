# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 22:09
# FilePath: P2418. 按身高排序.rb
# Description:

load "common/leetcode.rb"
# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names, heights)
    hash = {}
    names.each_with_index { |name, i| hash[heights[i]] = name }
    hash.sort.reverse.map { |v| v[1] }
end

if __FILE__ == $PROGRAM_NAME
    p sort_people(names = %w[Alice Bob Bob], heights = [155, 185, 150])
end
