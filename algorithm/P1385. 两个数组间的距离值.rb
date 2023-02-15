# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 22:04
# FilePath: P1385. 两个数组间的距离值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
    cnt = 0
    arr1.each { |x|
        cur = []
        arr2.each { |y|
            cur << (x - y).abs
        }
        cnt += 1 if cur.all?{|v| v > d}
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p find_the_distance_value(arr1 = [4, 5, 8], arr2 = [10, 9, 1, 8], d = 2)
end


