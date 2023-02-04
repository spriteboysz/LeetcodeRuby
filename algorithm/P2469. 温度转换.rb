# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:02
# FilePath: P2469. 温度转换.rb
# Description:

load "common/leetcode.rb"

# @param {Float} celsius
# @return {Float[]}
def convert_temperature(celsius)
    [celsius + 273.15, celsius * 1.80 + 32.00]
end

if __FILE__ == $PROGRAM_NAME
    p convert_temperature(celsius = 36.50)
end


