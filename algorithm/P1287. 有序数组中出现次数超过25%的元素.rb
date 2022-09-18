# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 21:33
# FilePath: P1287. 有序数组中出现次数超过25%的元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
    hash, n = Hash.new(0), arr.length
    arr.each do |num|
        hash[num] += 1
        return num if hash[num] > n / 4
    end
end

if __FILE__ == $PROGRAM_NAME
    p find_special_integer(arr = [1, 2, 2, 6, 6, 6, 6, 7, 10])
end
