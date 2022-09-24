# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 23:41
# FilePath: P1360. 日期之间隔几天.rb
# Description:

load "common/leetcode.rb"

def is_leap(year)
    (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

def process(date)
    yy, mm, dd = date.split("-").map(&:to_i)
    months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    months[1] = 29 if is_leap(yy)
    days = dd
    (1971...yy).each { |y| days += (is_leap(y) ? 366 : 365) }
    (0...mm - 1).each { |m| days += months[m] }
    days
end

# @param {String} date1
# @param {String} date2
# @return {Integer}
def days_between_dates(date1, date2)
    (process(date1) - process(date2)).abs
end

if __FILE__ == $PROGRAM_NAME
    p days_between_dates(date1 = "2020-01-15", date2 = "2019-12-31")
    p days_between_dates(date1 = "2020-01-15", date2 = "1980-01-01")
end
