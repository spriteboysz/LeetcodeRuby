# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 20:46
# FilePath: P2525. 根据规则将箱子分类.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
def categorize_box(length, width, height, mass)
    bulky = (length >= 10 ** 4 || width >= 10 ** 4 || height >= 10 ** 4 || length * width * height >= 10 ** 9)
    heavy = (mass >= 100)
    if bulky && heavy
        "Both"
    elsif bulky
        return "Bulky"
    elsif heavy
        return "Heavy"
    else
        "Neither"
    end
end

if __FILE__ == $PROGRAM_NAME
    p categorize_box(length = 1000, width = 35, height = 700, mass = 300)
end


