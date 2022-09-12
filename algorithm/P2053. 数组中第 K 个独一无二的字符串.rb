# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 22:03
# FilePath: P2053. 数组中第 K 个独一无二的字符串.rb
# Description: 

# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
    hash = Hash.new(0)
    arr.each { |item| hash[item] += 1 }
    ss = arr.select { |item| hash[item] == 1 }[k - 1]
    ss.nil? ? "" : ss
end

p kth_distinct(arr = %w[d b c b c a], k = 2)



