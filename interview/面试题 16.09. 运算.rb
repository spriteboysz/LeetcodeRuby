# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 12:44
# FilePath: 面试题 16.09. 运算.rb
# Description:

load "common/leetcode.rb"

class Operations
    def initialize

    end

=begin
    :type a: Integer
    :type b: Integer
    :retype: Integer
=end
    def minus(a, b)
        a - b
    end

=begin
    :type a: Integer
    :type b: Integer
    :retype: Integer
=end
    def multiply(a, b)
        a * b
    end

=begin
    :type a: Integer
    :type b: Integer
    :retype: Integer
=end
    def divide(a, b)
        (a * 1.0 / b).to_i
    end

end

if __FILE__ == $PROGRAM_NAME
    obj = Operations.new
    p obj.minus(1, 2)
    p obj.multiply(3, 4)
    p obj.divide(5, -2)
end


