# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 11:52
# FilePath: 面试题 16.16. 部分排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} array
# @return {Integer[]}
def sub_sort(array)
    n, maximum, minimum = array.length, -10000000, 10000000
    left, right = -1, -1
    array.each_with_index { |num, i|
        if num < maximum
            right = i
        else
            maximum = num
        end
    }
    array.reverse.each_with_index { |num, i|
        if num > minimum
            left = n - 1 - i
        else
            minimum = num
        end
    }
    [left, right]
end

if __FILE__ == $PROGRAM_NAME
    p sub_sort([1, 2, 4, 7, 10, 11, 7, 12, 6, 7, 16, 18, 19])
end


