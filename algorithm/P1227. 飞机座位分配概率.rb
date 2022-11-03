# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-03 23:21
# FilePath: P1227. 飞机座位分配概率.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Float}
def nth_person_gets_nth_seat(n)
    n == 1 ? 1.0 : 0.5
end

if __FILE__ == $PROGRAM_NAME
    p nth_person_gets_nth_seat(1)
    p nth_person_gets_nth_seat(2)
end
