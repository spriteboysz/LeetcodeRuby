# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:58
# FilePath: P1502. 判断能否形成等差数列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
    return true if arr.length == 2
    arr.sort!
    diff = arr[1] - arr[0]
    (1...arr.length).each { |i|
        return false if arr[i] - arr[i - 1] != diff
    }
    true
end

if __FILE__ == $PROGRAM_NAME
    p can_make_arithmetic_progression(arr = [3, 5, 1])
end




