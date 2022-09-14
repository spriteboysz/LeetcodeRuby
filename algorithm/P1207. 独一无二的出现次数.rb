# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 23:10
# FilePath: P1207. 独一无二的出现次数.rb
# Description: 

# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
    hash = Hash.new(0)
    arr.each { |num| hash[num] += 1 }
    hash.values.uniq.length == hash.keys.length
end

p unique_occurrences(arr = [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0])



