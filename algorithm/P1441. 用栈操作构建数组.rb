# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-31 22:59
# FilePath: P1441. 用栈操作构建数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
def build_array(target, n)
    return [] if n == 0
    operator = []
    prev = 0
    target.each { |num|
        (0...num - prev - 1).each { |_|
            operator << "Push"
            operator << "Pop"
        }
        operator << "Push"
        prev = num
    }
    operator
end

if __FILE__ == $PROGRAM_NAME
    p build_array(target = [1, 3], n = 3)
end


