# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 10:04
# FilePath: P1773. 统计匹配检索规则的物品数量.rb
# Description: 

# @param {String[][]} items
# @param {String} rule_key
# @param {String} rule_value
# @return {Integer}
def count_matches(items, rule_key, rule_value)
    cnt, index = 0, -1
    %w[type color name].each_with_index { |key, i|
        index = i if key == rule_key
    }
    items.each { |item|
        cnt += 1 if item[index] == rule_value
    }
    cnt
end

p count_matches(items = [%w[phone blue pixel], %w[computer silver phone], %w[phone gold iphone]],
                rule_key = "type",
                rule_value = "phone")


