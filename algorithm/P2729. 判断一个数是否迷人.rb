# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 19:16
# FilePath: P2729. 判断一个数是否迷人.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def is_fascinating(n)
    ss = n.to_s + (n * 2).to_s + (n * 3).to_s
    ss.length == 9 && ss.chars.uniq.length == 9 && !ss.include?("0")
end

if __FILE__ == $PROGRAM_NAME
    p is_fascinating 192
    p is_fascinating 783
end


