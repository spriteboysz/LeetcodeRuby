# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:58
# FilePath: P1089. 复写零.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
    n, i = arr.length, 0
    while i < n - 1
        if arr[i] == 0
            arr.pop
            arr.insert(i, 0)
            i += 1
        end
        i += 1
    end
    arr
end

if __FILE__ == $PROGRAM_NAME
    p duplicate_zeros([1, 0, 2, 3, 0, 4, 5, 0])
end
