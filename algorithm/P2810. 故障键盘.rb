# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-17 23:01
# FilePath: P2810. 故障键盘.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def final_string(s)
    ss = ""
    s.each_char { |c|
        if c == 'i'
            ss.reverse!
        else
            ss += c
        end
    }
    ss
end

if __FILE__ == $PROGRAM_NAME
    p final_string(s = "string")
    p final_string(s = "poiinter")
end


