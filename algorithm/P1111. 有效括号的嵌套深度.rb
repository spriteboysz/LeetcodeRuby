# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 23:08
# FilePath: P1111. 有效括号的嵌套深度.rb
# Description:

load "common/leetcode.rb"

# @param {String} seq
# @return {Integer[]}
def max_depth_after_split(seq)
    stack, depth = [], []
    seq.each_char do |c|
        if c == "("
            depth << stack.length
            stack << c
        else
            stack.pop
            depth << stack.length
        end
    end
    depth
end

if __FILE__ == $PROGRAM_NAME
    p max_depth_after_split(seq = "()(())()")
end
