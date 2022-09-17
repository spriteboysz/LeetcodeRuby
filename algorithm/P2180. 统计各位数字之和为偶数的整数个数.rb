# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:53
# FilePath: P2180. 统计各位数字之和为偶数的整数个数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer}
def count_even(num)
    cnt = 0
    (2..num).map do |n|
        cnt += 1 if n.to_s.chars.map(&:to_i).sum.even?
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_even(30)
end
