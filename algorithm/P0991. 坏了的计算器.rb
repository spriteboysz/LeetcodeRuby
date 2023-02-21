# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-21 23:34
# FilePath: P0991. 坏了的计算器.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} start_value
# @param {Integer} target
# @return {Integer}
def broken_calc(start_value, target)
    cnt = 0
    while target > start_value
        cnt += 1
        if target.even?
            target /= 2
        else
            target += 1
        end
    end
    cnt + start_value - target
end

if __FILE__ == $PROGRAM_NAME
    p broken_calc(3, 10)
end


