# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 22:47
# FilePath: P2591. 将钱分给最多的儿童.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} money
# @param {Integer} children
# @return {Integer}
def dist_money(money, children)
    money -= children
    return -1 if money < 0
    ans = [money / 7, children].min
    money -= ans * 7
    children -= ans
    if children == 0 && money != 0 || children == 1 && money == 3
        ans -= 1
    end
    ans
end

if __FILE__ == $PROGRAM_NAME
    p dist_money(money = 20, children = 3)
end


