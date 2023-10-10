# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:43
# FilePath: LCR 173. 点名.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} records
# @return {Integer}
def take_attendance(records)
    records.each_with_index { |record, i|
        return i if i != record
    }
    records.size
end

if __FILE__ == $PROGRAM_NAME
    p take_attendance(records = [0, 1, 2, 3, 4, 5, 6, 7])
end


