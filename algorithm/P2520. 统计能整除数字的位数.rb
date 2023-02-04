# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:15
# FilePath: P2520. 统计能整除数字的位数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer}
def count_digits(num)
    cnt = 0
    num.to_s.chars.each do |c|
        cnt += 1 if num % c.to_i == 0
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_digits(121)
    p count_digits(1248)
end


