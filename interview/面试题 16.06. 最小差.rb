# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 12:50
# FilePath: 面试题 16.06. 最小差.rb
# Description:

# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer}
def smallest_difference(a, b)
    a.sort!
    b.sort!
    diff, i, j = 2 ** 31, 0, 0
    while i < a.length && j < b.length
        diff = [diff, (b[j] - a[i]).abs].min
        return 0 if a[i] == b[j]
        if a[i] > b[j]
            j += 1
        else
            i += 1
        end
    end
    diff
end

load "common/leetcode.rb"

if __FILE__ == $PROGRAM_NAME
    p smallest_difference([1, 3, 15, 11, 2], [23, 127, 235, 19, 8])
end


