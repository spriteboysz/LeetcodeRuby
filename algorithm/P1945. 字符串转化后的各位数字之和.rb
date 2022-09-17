# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:44
# FilePath: P1945. 字符串转化后的各位数字之和.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_lucky(s, k)
    num = s.chars.map { |c| (c.ord - 97 + 1).to_s }.join
    while k > 0
        num = num.chars.map(&:to_i).sum.to_s
        k -= 1
    end
    num.to_i
end

if __FILE__ == $PROGRAM_NAME
    p get_lucky(s = "leetcode", k = 2)
end
