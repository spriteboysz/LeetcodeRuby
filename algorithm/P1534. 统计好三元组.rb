# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:30
# FilePath: P1534. 统计好三元组.rb
# Description: 

# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
    cnt, n = 0, arr.length
    (0...n).each { |i|
        (i + 1...n).each { |j|
            next unless (arr[i] - arr[j]).abs <= a
            (j + 1...n).each { |k|
                cnt += 1 if (arr[j] - arr[k]).abs <= b && (arr[i] - arr[k]).abs <= c
            }
        }
    }
    cnt
end

p count_good_triplets(arr = [3, 0, 1, 1, 9, 7], a = 7, b = 2, c = 3)



