# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:30
# FilePath: P0492. 构造矩形.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
    (area ** 0.5).to_i.downto(1).each do |w|
        return [area / w, w] if area % w == 0
    end
end

if __FILE__ == $PROGRAM_NAME
    p construct_rectangle(area = 122122)
end
