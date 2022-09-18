# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 10:29
# FilePath: P0401. 二进制手表.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} turned_on
# @return {String[]}
def read_binary_watch(turned_on)
    times = []
    0.upto(12 * 60 - 1).each do |s|
        hh, mm = s / 60, s % 60
        times << (hh.to_s + ":" + "%02d" % mm) if hh.to_s(2).count("1") + mm.to_s(2).count("1") == turned_on
    end
    times
end

if __FILE__ == $PROGRAM_NAME
    p read_binary_watch(turned_on = 1)
end
