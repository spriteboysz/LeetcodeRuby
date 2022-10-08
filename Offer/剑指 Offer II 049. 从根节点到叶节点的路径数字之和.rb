# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 23:08
# FilePath: 剑指 Offer II 049. 从根节点到叶节点的路径数字之和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root)
    dfs(root, 0)
end

def dfs(root, sum)
    return 0 if root.nil?
    sum = sum * 10 + root.val
    if root.left.nil? && root.right.nil?
        sum
    else
        dfs(root.left, sum) + dfs(root.right, sum)
    end
end

if __FILE__ == $PROGRAM_NAME
    p sum_numbers(TreeNode.create("[4,9,0,5,1]"))
end
