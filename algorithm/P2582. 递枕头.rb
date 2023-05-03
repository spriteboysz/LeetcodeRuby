# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 22:58
# FilePath: P2582. 递枕头.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} n
# @param {Integer} time
# @return {Integer}
def pass_the_pillow(n, time)
    pos, step = 1, 1
    time.times do
        step = 1 if pos == 1
        step = -1 if pos == n
        pos += step
    end
    pos
end

if __FILE__ == $PROGRAM_NAME
    p pass_the_pillow(4, 5)
end


