# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 22:28
# FilePath: P1672. 最富有客户的资产总量.rb
# Description: 1672. 最富有客户的资产总量

# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
    maximum = -1
    accounts.each { |account|
        maximum = [account.sum, maximum].max
    }
    maximum
end

# test
ans = maximum_wealth(accounts = [[2, 8, 7], [7, 1, 3], [1, 9, 5]])
p ans



