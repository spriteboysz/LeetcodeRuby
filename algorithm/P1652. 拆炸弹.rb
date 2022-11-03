# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-03 23:32
# FilePath: P1652. 拆炸弹.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
    n = code.length
    left = k > 0 ? 1 : n + k
    right = k > 0 ? k + 1 : n
    sum = code[left...right].sum
    decode = Array.new(n)

    (0...n).each do |i|
        decode[i] = sum
        sum += code[(right + i) % n] - code[(left + i) % n]
    end
    decode
end

if __FILE__ == $PROGRAM_NAME
    p decrypt(code = [2, 4, 9, 3], k = -2)
end
