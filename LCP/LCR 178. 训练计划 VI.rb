# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:56
# FilePath: LCR 178. 训练计划 VI.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} actions
# @return {Integer}
def training_plan(actions)
    hash = Hash.new(0)
    actions.each { |action| hash[action] += 1 }
    hash.keys.each { |k| return k if hash[k] == 1 }
    -1
end

if __FILE__ == $PROGRAM_NAME
    p training_plan(actions = [12, 1, 6, 12, 6, 12, 6])
end


