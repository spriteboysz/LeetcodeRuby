# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 22:20
# FilePath: P1507. 转变日期格式.rb
# Description:

load "common/leetcode.rb"
require 'set'
# @param {String} date
# @return {String}
def reformat_date(date)
    months = Array["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    dd, mm, yy = date.split
    "%04d" % yy + "-" + "%02d" % (months.index(mm) + 1) + "-" + "%02d" % dd.to_i
end

if __FILE__ == $PROGRAM_NAME
    p reformat_date(date = "6th Jun 1933")
end
