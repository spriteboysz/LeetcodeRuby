# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 17:21
# FilePath: P1758. 生成交替二进制字符串的最少操作数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def min_operations(s)
    n = s.length
    ss1, ss2 = ("01" * n)[...n], ("10" * n)[...n]
    cnt1, cnt2 = 0, 0
    s.chars.each_with_index do |c, i|
        cnt1 += 1 if c != ss1[i]
        cnt2 += 1 if c != ss2[i]
    end
    [cnt1, cnt2].min
end

if __FILE__ == $PROGRAM_NAME
    p min_operations(s = "11111")
end
