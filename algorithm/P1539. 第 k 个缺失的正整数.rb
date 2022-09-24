# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 00:02
# FilePath: P1539. 第 k 个缺失的正整数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
    number = Array.new(3001, 0)
    arr.each { |num| number[num] += 1 }
    (1..3000).each do |num|
        k -= 1 if number[num] == 0
        return num if k == 0
    end
end

if __FILE__ == $PROGRAM_NAME
    p find_kth_positive(arr = [1, 2, 3, 4], k = 2)
end
