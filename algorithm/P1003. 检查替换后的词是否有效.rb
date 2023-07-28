# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 23:37
# FilePath: P1003. 检查替换后的词是否有效.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    s.each_char { |c|
        if stack.size < 2
            stack << c
        elsif c == 'c' && stack.last(2) == ['a', 'b']
            stack.pop(2)
        else
            stack << c
        end
    }
    stack.empty?
end

if __FILE__ == $PROGRAM_NAME
    p is_valid(s = "abcabcababcc")
end


