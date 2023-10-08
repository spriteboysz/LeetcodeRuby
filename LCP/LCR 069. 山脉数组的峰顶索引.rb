# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:53
# FilePath: LCR 069. 山脉数组的峰顶索引.rb
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
    p peak_index_in_mountain_array(arr = [1, 3, 5, 4, 2])
end


