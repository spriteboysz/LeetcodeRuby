# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 23:55
# FilePath: P0921. 使括号有效的最少添加.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def min_add_to_make_valid(s)
    cnt, high = 0, 0
    s.each_char { |c|
        if c == '('
            high += 1
        elsif high > 0
            high -= 1
        else
            cnt += 1
        end
    }
    cnt + high
end

if __FILE__ == $PROGRAM_NAME
    p min_add_to_make_valid(s = "(((")
end


