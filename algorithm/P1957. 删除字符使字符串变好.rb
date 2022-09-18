# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 17:10
# FilePath: P1957. 删除字符使字符串变好.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def make_fancy_string(s)
    ss = ""
    s.each_char do |c|
        next if ss.length >= 2 && ss[-2] == ss[-1] && ss[-1] == c
        ss << c
    end
    ss
end

if __FILE__ == $PROGRAM_NAME
    p make_fancy_string("aaabaaaa")
end
