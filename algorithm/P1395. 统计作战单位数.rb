# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 22:12
# FilePath: P1395. 统计作战单位数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} rating
# @return {Integer}
def num_teams(rating)
    cnt, n = 0, rating.length
    (1...n - 1).each { |j|
        i1, i2, k1, k2 = 0, 0, 0, 0
        (0...j).each { |i|
            i1 += 1 if rating[i] < rating[j]
            i2 += 1 if rating[i] > rating[j]
        }
        (j + 1...n).each { |k|
            k1 += 1 if rating[k] < rating[j]
            k2 += 1 if rating[k] > rating[j]
        }
        cnt += i1 * k2 + i2 * k1
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p num_teams([2, 5, 3, 4, 1])
end


