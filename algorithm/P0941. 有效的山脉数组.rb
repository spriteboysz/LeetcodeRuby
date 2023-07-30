# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 22:52
# FilePath: P0941. 有效的山脉数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
    return false if arr.size < 2 || arr[0] >= arr[1]
    flag = true
    (2...arr.size).each { |i|
        if flag && arr[i - 1] >= arr[i]
            flag = false
        end
        if !flag && arr[i - 1] <= arr[i]
            return false
        end
    }
    !flag
end

if __FILE__ == $PROGRAM_NAME
    p valid_mountain_array(arr = [0, 3, 2, 1])
end


