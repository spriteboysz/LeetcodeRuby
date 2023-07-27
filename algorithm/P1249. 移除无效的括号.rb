# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 23:09
# FilePath: P1249. 移除无效的括号.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def min_remove_to_make_valid(s)
    stack = []
    ss = ""
    s.each_char { |c|
        if c == '('
            stack << c
            ss += c
        elsif c == ')'
            if !stack.empty? && stack.last == '('
                stack.pop
                ss += c
            end
        else
            ss += c
        end
    }
    stack.clear
    ss2 = ""
    ss.reverse.each_char { |c|
        if c == ')'
            stack << c
            ss2 += c
        elsif c == '('
            if !stack.empty? && stack.last == ')'
                stack.pop
                ss2 += c
            end
        else
            ss2 += c
        end
    }
    ss2.reverse
end

if __FILE__ == $PROGRAM_NAME
    p min_remove_to_make_valid(s = "lee(t(c)o)de)")
end


