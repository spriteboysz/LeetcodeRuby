# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 20:02
# FilePath: P2027. 转换字符串的最少操作次数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def minimum_moves(s)
    cnt, i = 0, 0
    while i < s.size
        if s[i] == "X"
            cnt += 1
            i += 3
        else
            i += 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p minimum_moves(s = "XXOX")
end
