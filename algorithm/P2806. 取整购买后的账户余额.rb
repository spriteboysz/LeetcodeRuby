# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-17 23:06
# FilePath: P2806. 取整购买后的账户余额.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} purchase_amount
# @return {Integer}
def account_balance_after_purchase(purchase_amount)
    100 - (purchase_amount + 5) / 10 * 10
end

if __FILE__ == $PROGRAM_NAME
    p account_balance_after_purchase(purchase_amount = 9)
end


