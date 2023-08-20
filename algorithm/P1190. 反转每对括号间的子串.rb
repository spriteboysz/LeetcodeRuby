# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 12:31
# FilePath: P1190. 反转每对括号间的子串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def reverse_parentheses(s)
    stack, ss = [], ""
    s.each_char { |c|
        if c == '('
            ss += c
            stack << ss.length - 1
        elsif c == ')'
            if stack.last + 1 <= ss.length
                ss = ss[0...stack.last] + ss[stack.last + 1...ss.length].reverse
                stack.pop
            else
                ss = ss[0...-1]
            end
        else
            ss += c
        end
    }
    ss
end

if __FILE__ == $PROGRAM_NAME
    p reverse_parentheses(s = "(ed(et(oc))el)")
    p reverse_parentheses(s = "ta()usw((((a))))")
end


