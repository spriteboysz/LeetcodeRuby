# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 21:18
# FilePath: P2696. 删除子串后的字符串最小长度.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def min_length(s)
    ss = []
    s.each_char { |c|
        if ss.empty?
            ss.push(c)
        elsif ss.last == "A" && c == "B"
            ss.pop
        elsif ss.last == "C" && c == "D"
            ss.pop
        else
            ss.push(c)
        end
    }
    ss.size
end

if __FILE__ == $PROGRAM_NAME
    p min_length(s = "ABFCACDB")
end


