# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-03 23:23
# FilePath: P0946. 验证栈序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
    stack = []
    pushed.each do |num|
        stack.append(num)
        while !stack.empty? && !popped.empty? && stack.last == popped.first
            stack.pop
            popped.shift
        end
    end
    stack.empty? && popped.empty?
end

if __FILE__ == $PROGRAM_NAME
    p validate_stack_sequences(pushed = [1, 2, 3, 4, 5], popped = [4, 5, 3, 2, 1])
    p validate_stack_sequences(pushed = [1, 2, 3, 4, 5], popped = [4, 3, 5, 1, 2])
end
