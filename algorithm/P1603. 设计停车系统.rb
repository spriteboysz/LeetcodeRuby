# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 11:59
# FilePath: P1603. 设计停车系统.rb
# Description: 

class ParkingSystem
    @parking = []
=begin
    :type big: Integer
    :type medium: Integer
    :type small: Integer
=end
    def initialize(big, medium, small)
        @parking = [big, medium, small]
    end

=begin
    :type car_type: Integer
    :retype: Boolean
=end
    def add_car(car_type)
        car_type -= 1
        if @parking[car_type] >= 1
            @parking[car_type] -= 1
            true
        else
            false
        end
    end
end

obj = ParkingSystem.new(1, 1, 0)
p obj.add_car(1)



