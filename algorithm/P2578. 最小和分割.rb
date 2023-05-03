# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 23:06
# FilePath: P2578. 最小和分割.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} num
# @return {Integer}
def split_num(num)
    even, odd = [], []
    num.to_s.chars.sort.each_with_index do |c, i|
        if i % 2 == 0
            even << c
        else
            odd << c
        end
    end
    even.join.to_i + odd.join.to_i
end

if __FILE__ == $PROGRAM_NAME
    p split_num(4325)
end


