# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-21 23:08
# FilePath: P0650. 只有两个键的键盘.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def min_steps(n)
    cnt, tmp = 0, n
    (2..n).each do |i|
        while tmp % i == 0
            tmp /= i
            cnt += i
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p min_steps(3)
end


