# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:32
# FilePath: LCR 166. 珠宝的最高价值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} frame
# @return {Integer}
def jewellery_value(frame)
    m, n = frame.size, frame[0].size
    (0...m).each { |i|
        (0...n).each { |j|
            next if i == 0 and j == 0
            if i == 0
                frame[i][j] += frame[i][j - 1]
            elsif j == 0
                frame[i][j] += frame[i - 1][j]
            else
                frame[i][j] += [frame[i - 1][j], frame[i][j - 1]].max
            end
        }
    }
    frame[-1].last
end

if __FILE__ == $PROGRAM_NAME
    p jewellery_value(frame = [[1,3,1],[1,5,1],[4,2,1]])
end


