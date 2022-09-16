# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 21:52
# FilePath: P1122. 数组的相对排序.rb
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
    p relative_sort_array(arr1 = [28, 6, 22, 8, 44, 17], arr2 = [22, 28, 8, 6])
end
