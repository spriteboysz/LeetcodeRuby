# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 16:30
# FilePath: P0397. 整数替换.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def integer_replacement(n)
    cnt = 0
    until n == 1
        if n % 2 == 0
            cnt += 1
            n /= 2
        elsif n % 4 == 1
            cnt += 2
            n /= 2
        else
            if n == 3
                cnt += 2
                n = 1
            else
                cnt += 2
                n = n / 2 + 1
            end
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p integer_replacement(8)
    p integer_replacement(7)
end


