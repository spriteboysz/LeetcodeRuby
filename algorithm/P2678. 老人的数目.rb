# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 22:26
# FilePath: P2678. 老人的数目.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} details
# @return {Integer}
def count_seniors(details)
    details.map { |el| el[11..12].to_i }.count { |el| el > 60 }
end

if __FILE__ == $PROGRAM_NAME
    p count_seniors(details = %w[7868190130M7522 5303914400F9211 9273338290F4010])
end


