# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-18 23:06
# FilePath: P2383. 赢得比赛需要的最少训练时长.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} initial_energy
# @param {Integer} initial_experience
# @param {Integer[]} energy
# @param {Integer[]} experience
# @return {Integer}
def min_number_of_hours(initial_energy, initial_experience, energy, experience)
    minimum = [0, energy.sum - initial_energy + 1].max
    experience.each { |x|
        if initial_experience <= x
            minimum += x - initial_experience + 1
            initial_experience = x + 1
        end
        initial_experience += x
    }
    minimum
end

if __FILE__ == $PROGRAM_NAME
    p min_number_of_hours(initial_energy = 5, initial_experience = 3, energy = [1, 4, 3, 2], experience = [2, 6, 3, 1])
end


