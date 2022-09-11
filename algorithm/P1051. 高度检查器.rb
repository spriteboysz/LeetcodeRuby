# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:21
# FilePath: P1051. 高度检查器.rb
# Description: 

# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
    cnt = 0
    sorted = heights.sort
    heights.zip(sorted).each { |h, s| cnt += 1 unless h == s }
    cnt
end

p height_checker(heights = [5, 1, 2, 3, 4])



