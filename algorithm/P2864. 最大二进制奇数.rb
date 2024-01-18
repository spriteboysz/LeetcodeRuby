# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-17 22:13
# FilePath: P2864. 最大二进制奇数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def maximum_odd_binary_number(s)
    cnt0, cnt1 = 0, 0
    s.chars.each { |c|
        if c == '0'
            cnt0 += 1
        else
            cnt1 += 1
        end
    }
    "1" * (cnt1 - 1) + "0" * cnt0 + "1"
end

if __FILE__ == $PROGRAM_NAME
    p maximum_odd_binary_number(s = "010")
end


