# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:54
# FilePath: LCR 177. 撞色搭配.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} sockets
# @return {Integer[]}
def sock_collocation(sockets)
    hash = Hash.new(0)
    sockets.each { |socket| hash[socket] += 1 }
    single = []
    hash.keys.each { |k| single << k if hash[k] == 1 }
    single
end

if __FILE__ == $PROGRAM_NAME
    p sock_collocation(sockets = [4, 5, 2, 4, 6, 6])
end


