# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 22:47
# FilePath: P0788. 旋转数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
    cnt = 0
    1.upto(n).each do |i|
        num = i.to_s.chars.map(&:to_i)
        valid, diff = true, false
        num.uniq.each do |digit|
            valid = false if [3, 4, 7].include?(digit)
            diff = true if [2, 5, 6, 9].include?(digit)
        end
        cnt += 1 if valid && diff
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p rotated_digits(10)
end
