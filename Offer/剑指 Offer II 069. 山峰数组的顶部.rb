# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:14
# FilePath: 剑指 Offer II 069. 山峰数组的顶部.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
    (1...arr.length - 1).each do |i|
        return i if arr[i] > arr[i - 1] && arr[i] > arr[i + 1]
    end
end

if __FILE__ == $PROGRAM_NAME
    p peak_index_in_mountain_array(arr = [24, 69, 100, 99, 79, 78, 67, 36, 26, 19])
end
