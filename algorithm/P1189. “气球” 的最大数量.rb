# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 22:19
# FilePath: P1189. “气球” 的最大数量.rb
# Description:

load "common/leetcode.rb"

# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
    counts = Array.new(5, 0)
    text.each_char { |c|
        case c
        when "b"
            counts[0] += 1
        when "a"
            counts[1] += 1
        when "l"
            counts[2] += 0.5
        when "o"
            counts[3] += 0.5
        when "n"
            counts[4] += 1
        else
            next
        end
    }
    counts.map(&:to_i).min
end

if __FILE__ == $PROGRAM_NAME
    p max_number_of_balloons(text = "loonbalxballpoon")
end
