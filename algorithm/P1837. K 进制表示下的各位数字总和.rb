# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:57
# FilePath: P1837. K 进制表示下的各位数字总和.rb
# Description: 

def sum_base(n, k)
    n.to_s(k).chars.map(&:to_i).sum
end

p sum_base(34, 6)



