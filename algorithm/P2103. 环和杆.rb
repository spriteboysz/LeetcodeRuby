# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:10
# FilePath: P2103. 环和杆.rb
# Description: 

# @param {String} rings
# @return {Integer}
def count_points(rings)
    rod = Array.new(10, 0)
    (0...rings.length).step(2).each { |i|
        rod[rings[i + 1].to_i] |= 1 if rings[i] == "B"
        rod[rings[i + 1].to_i] |= 2 if rings[i] == "R"
        rod[rings[i + 1].to_i] |= 4 if rings[i] == "G"
    }
    rod.select { |n| n == 7 }.length
end

p count_points("B0R0G0R9R0B0G0")



