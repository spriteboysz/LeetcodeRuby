# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 23:20
# FilePath: P1200. 最小绝对差.rb
# Description: 

# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
    arr.sort!
    n, best = arr.length, 10 ** 6 + 1
    min_diff_set = []
    (0...n - 1).each { |i|
        delta = arr[i + 1] - arr[i]
        if delta < best
            best = delta
            min_diff_set = [[arr[i], arr[i + 1]]]
        elsif delta == best
            min_diff_set.append([arr[i], arr[i + 1]])
        end
    }
    min_diff_set
end

p minimum_abs_difference([3, 8, -10, 23, 19, -4, -14, 27])



