# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 21:19
# FilePath: P1544. 整理字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def make_good(s)
    stack = []
    s.each_char do |c|
        if stack.length == 0 || (stack[-1].ord - c.ord).abs != 32
            stack << c
        else
            stack.pop
        end
    end
    stack.join
end

if __FILE__ == $PROGRAM_NAME
    p make_good(s = "abBAcC")
end


