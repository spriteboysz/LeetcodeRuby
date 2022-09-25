# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:16
# FilePath: P0852. 山脉数组的峰顶索引.rb
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
    p peak_index_in_mountain_array(arr = [3, 4, 5, 1])
end
