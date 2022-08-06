# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-08-06 11:55:56
# Description:
# FilePath: 1317. 将整数转换为两个无零整数的和

# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
    a = rand(n)
    b = n - a
    while check(a) or check(b)
        a = rand(n)
        b = n - a
    end
    [a, b]
end

def check(n)
    n.to_s.include?("0")
end

ans = get_no_zero_integers(300000)
p ans