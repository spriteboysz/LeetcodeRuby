# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 10:02
# FilePath: P1154. 一年中的第几天.rb
# Description:

load "common/leetcode.rb"

def leap?(year)
    year % 400 == 0 or (year % 4 == 0 and year % 100 != 0)
end

# @param {String} date
# @return {Integer}
def day_of_year(date)
    year, month, day = date.split("-").map(&:to_i)
    days02 = leap?(year) ? 29 : 28
    days_of_month = [31, days02, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    days = day
    (0...month - 1).each { |m| days += days_of_month[m] }
    days
end

if __FILE__ == $PROGRAM_NAME
    p day_of_year(date = "2019-02-10")
    p day_of_year("2003-03-01")
end
