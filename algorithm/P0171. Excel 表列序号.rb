# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 22:56
# FilePath: P0171. Excel 表列序号.rb
# Description: 

# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
    num = 0
    column_title.chars.each { |c| num = num * 26 + c.ord - "A".ord + 1 }
    num
end

p title_to_number "AA"
p title_to_number "ZY"




