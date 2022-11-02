# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-01 23:49
# FilePath: P0458. 可怜的小猪.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} buckets
# @param {Integer} minutes_to_die
# @param {Integer} minutes_to_test
# @return {Integer}
def poor_pigs(buckets, minutes_to_die, minutes_to_test)
    return 0 if buckets == 1
    (1..buckets).each do |num|
        if (minutes_to_test / minutes_to_die + 1).pow(num) >= buckets
            return num
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p poor_pigs(4, 15, 15)
end
