# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 16:49
# FilePath: P2363. 合并相似的物品.rb
# Description: 

# @param {Integer[][]} items1
# @param {Integer[][]} items2
# @return {Integer[][]}
def merge_similar_items(items1, items2)
    hash = Hash.new(0)
    items1.each { |item| hash[item[0]] += item[1] }
    items2.each { |item| hash[item[0]] += item[1] }
    hash.sort
end

p merge_similar_items(items1 = [[2, 2], [1, 3]], items2 = [[7, 1], [2, 2], [1, 4]])



