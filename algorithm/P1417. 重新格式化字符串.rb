# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 22:12
# FilePath: P1417. 重新格式化字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def reformat(s)
    chars1, chars2 = [], []
    s.each_char do |c|
        if c.ord - '0'.ord >= 0 && '9'.ord - c.ord >= 0
            chars1 << c
        else
            chars2 << c
        end
    end
    return "" if (chars1.length - chars2.length).abs > 1
    chars1, chars2 = chars2, chars1 if chars1.length > chars2.length
    ss = []
    while chars1.length > 0 || chars2.length > 0
        ss << chars2.shift if chars2.length > 0
        ss << chars1.shift if chars1.length > 0
    end
    ss.join
end

if __FILE__ == $PROGRAM_NAME
    p reformat(s = "covid2019")
end


