# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:26
# FilePath: P2549. 统计桌面上的不同数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def distinct_integers(n)
    n == 1 ? 1 : n - 1
end

if __FILE__ == $PROGRAM_NAME
    p distinct_integers(5)
end


