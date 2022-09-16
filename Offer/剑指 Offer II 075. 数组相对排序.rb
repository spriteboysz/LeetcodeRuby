# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 21:37
# FilePath: 剑指 Offer II 075. 数组相对排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
    hash = Hash.new(1001)
    arr2.each_with_index { |num, i| hash[num] = i }
    arr1.sort_by { |num| [hash[num], num] }
end

if __FILE__ == $PROGRAM_NAME
    p relative_sort_array(arr1 = [2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19], arr2 = [2, 1, 4, 3, 9, 6])
end
