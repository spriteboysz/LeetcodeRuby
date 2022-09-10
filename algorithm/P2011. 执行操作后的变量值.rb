# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 22:44
# FilePath: P2011. 执行操作后的变量值.rb
# Description: 

# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
    x = 0
    operations.each { |operation|
        x += 1 if operation.include?("+")
        x -= 1 if operation.include?("-")
    }
    x
end

p final_value_after_operations(operations = %w[X++ ++X --X X--])
