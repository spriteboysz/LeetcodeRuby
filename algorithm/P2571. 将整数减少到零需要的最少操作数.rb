# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 22:16
# FilePath: P2571. 将整数减少到零需要的最少操作数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def min_operations(n)
    cnt = 0
    while n > 0
        if n & 1 != 0
            n += 1 if n & 3 == 3
            n >>= 2
            cnt += 1
        else
            n >>= 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p min_operations(39)
end


