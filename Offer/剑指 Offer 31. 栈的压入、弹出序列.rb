# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-23 22:50
# FilePath: 剑指 Offer 31. 栈的压入、弹出序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
    stack, i = [], 0
    pushed.each do |num|
        stack << num
        until stack.empty? || stack.last != popped[i]
            stack.pop
            i += 1
        end
    end
    stack.empty?
end

if __FILE__ == $PROGRAM_NAME
    p validate_stack_sequences(pushed = [1, 2, 3, 4, 5], popped = [4, 5, 3, 2, 1])
end


