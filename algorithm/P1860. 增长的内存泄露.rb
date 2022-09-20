# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 23:33
# FilePath: P1860. 增长的内存泄露.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} memory1
# @param {Integer} memory2
# @return {Integer[]}
def mem_leak(memory1, memory2)
    i = 1
    while [memory1, memory2].max >= i
        if memory1 >= memory2
            memory1 -= i
        else
            memory2 -= i
        end
        i += 1
    end
    [i, memory1, memory2]
end

if __FILE__ == $PROGRAM_NAME
    p mem_leak(memory1 = 8, memory2 = 11)
end
