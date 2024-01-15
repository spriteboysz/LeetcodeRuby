# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-14 21:37
# FilePath: P2951. 找出峰值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} mountain
# @return {Integer[]}
def find_peaks(mountain)
    peaks = []
    mountain.each_with_index { |high, i|
        next if i == 0 or i == mountain.length - 1
        if mountain[i - 1] < high and mountain[i + 1] < high
            peaks << i
        end
    }
    peaks
end

if __FILE__ == $PROGRAM_NAME
    p find_peaks(mountain = [1, 4, 3, 8, 5])
end


