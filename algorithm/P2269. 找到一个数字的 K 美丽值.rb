# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-05 23:35
# FilePath: P2269. 找到一个数字的 K 美丽值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
    cnt = 0
    s = num.to_s
    (0..s.size - k).each do |i|
        cur = s[i, k].to_i
        cnt += 1 if cur != 0 && num % cur == 0
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p divisor_substrings(num = 430043, k = 2)
end
