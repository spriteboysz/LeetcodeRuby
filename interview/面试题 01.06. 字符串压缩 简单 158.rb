# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 23:04
# FilePath: 面试题 01.06. 字符串压缩 简单 158.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def compress_string(s)
    stack1, stack2 = [], []
    s.each_char do |c|
        if stack1 == 0 || c != stack1[-1]
            stack1 << c
            stack2 << 1
        else
            stack2[-1] += 1
        end
    end
    ss = ""
    stack1.each_with_index do |c, i|
        ss += c.to_s + stack2[i].to_s
    end
    ss.length < s.length ? ss : s
end

if __FILE__ == $PROGRAM_NAME
    p compress_string("aabcccccaaa")
end


