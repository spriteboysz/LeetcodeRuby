# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 22:38
# FilePath: P1418. 点菜展示表.rb
# Description:

load "common/leetcode.rb"

# @param {String[][]} orders
# @return {String[][]}
def display_table(orders)
    hash = Hash.new { |h, k| h[k] = Hash.new(0) }
    foods = []
    orders.each { |_, id, food|
        foods << food
        hash[id][food] += 1
    }
    ids = hash.keys.sort_by! { |el| el.to_i }
    foods.uniq.sort!
    tables = [["Table"] + foods]
    ids.each { |id|
        row = [id]
        foods.each { |food|
            row << hash[id][food].to_s
        }
        tables << row
    }
    tables
end

if __FILE__ == $PROGRAM_NAME
    p display_table(orders = [["David", "3", "Ceviche"],
                              ["Corina", "10", "Beef Burrito"],
                              ["David", "3", "Fried Chicken"],
                              ["Carla", "5", "Water"],
                              ["Carla", "5", "Ceviche"],
                              ["Ros", "3", "Ceviche"]])
    p display_table(orders = [["James", "12", "Fried Chicken"],
                              ["Rates", "12", "Fried Chicken"],
                              ["Amadeus", "12", "Fried Chicken"],
                              ["Adam", "1", "Canadian Waffles"],
                              ["Brianna", "1", "Canadian Waffles"]])
    p display_table(orders = [["Laura", "2", "Bean Burrito"],
                              ["Jon", "2", "Beef Burrito"],
                              ["Melissa", "2", "Soda"]])
end


