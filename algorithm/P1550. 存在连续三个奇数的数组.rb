# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:29
# FilePath: P1550. 存在连续三个奇数的数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    (2...arr.length).each do |i|
        return true if arr[i - 2].odd? && arr[i - 1].odd? && arr[i].odd?
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p three_consecutive_odds(arr = [1, 2, 34, 3, 4, 5, 7, 23, 12])
end
