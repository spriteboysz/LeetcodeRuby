# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 17:36
# FilePath: P0844. 比较含退格的字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    stack1, stack2 = [], []
    s.each_char { |c|
        if c == "#"
            stack1.pop unless stack1.empty?
        else
            stack1 << c
        end
    }
    t.each_char { |c|
        if c == "#"
            stack2.pop unless stack2.empty?
        else
            stack2 << c
        end
    }
    stack1.join == stack2.join
end

if __FILE__ == $PROGRAM_NAME
    p backspace_compare(s = "ab#c", t = "ad#c")
    p backspace_compare(s = "y#fo##f", t = "y#f#o##f")
end


