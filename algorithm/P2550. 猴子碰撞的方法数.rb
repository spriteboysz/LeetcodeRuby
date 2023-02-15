# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 17:13
# FilePath: P2550. 猴子碰撞的方法数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def monkey_move(n)
    mod = 10 ** 9 + 7
    (2.pow(n, mod) - 2) % mod
end

if __FILE__ == $PROGRAM_NAME
    p monkey_move(4)
end


