# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:26
# FilePath: LCR 139. 训练计划 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} actions
# @return {Integer[]}
def training_plan(actions)
    actions.sort_by{|action| -(action % 2)}
end

if __FILE__ == $PROGRAM_NAME
    p training_plan(actions = [1,2,3,4,5])
end


