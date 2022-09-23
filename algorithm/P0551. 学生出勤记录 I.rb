# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:43
# FilePath: P0551. 学生出勤记录 I.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def check_record(s)
    s.count("A") < 2 && !s.include?("LLL")
end

if __FILE__ == $PROGRAM_NAME
    p check_record(s = "PPALLL")
    p check_record(s = "PPALLP")
end
