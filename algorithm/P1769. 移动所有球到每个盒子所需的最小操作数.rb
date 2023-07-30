# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 13:14
# FilePath: P1769. 移动所有球到每个盒子所需的最小操作数.rb
# Description:

load "common/leetcode.rb"

# @param {String} boxes
# @return {Integer[]}
def min_operations(boxes)
    n = boxes.size
    left_pref, right_pref = Array.new(n, 0), Array.new(n, 0)
    left, right = Array.new(n, 0), Array.new(n, 0)
    (1...n).each { |i|
        left_pref[i] = Integer(boxes[i - 1]) + left_pref[i - 1]
        left[i] = left[i - 1] + left_pref[i]
    }
    (2..n).each { |i|
        right_pref[n - i] = Integer(boxes[n - i + 1]) + right_pref[n - i + 1]
        right[n - i] = right[n - i + 1] + right_pref[n - i]
    }
    (0...n).map { |i| left[i] + right[i] }
end

if __FILE__ == $PROGRAM_NAME
    p min_operations(boxes = "001011")
end


