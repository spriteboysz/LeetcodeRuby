# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:53
# FilePath: P0292. Nim 游戏.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def can_win_nim(n)
    n % 4 != 0
end

if __FILE__ == $PROGRAM_NAME
    p can_win_nim(4)
end




