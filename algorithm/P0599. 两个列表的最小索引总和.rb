# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 23:22
# FilePath: P0599. 两个列表的最小索引总和.rb
# Description:

load "common/leetcode.rb"
# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
    hash1, hash2 = Hash.new(-1), Hash.new(-1)
    list1.each_with_index do |item, i|
        hash1[item] = i
    end
    list2.each_with_index do |item, i|
        hash2[item] = i + hash1[item] if hash1.include?(item)
    end

    minimum = hash2.values.min
    restaurant = []
    hash2.each_pair do |k, v|
        restaurant << k if v == minimum
    end
    restaurant
end

if __FILE__ == $PROGRAM_NAME
    list1 = ["Shogun", "Tapioca Express", "Burger King", "KFC"]
    list2 = ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
    p find_restaurant(list1, list2)
end


