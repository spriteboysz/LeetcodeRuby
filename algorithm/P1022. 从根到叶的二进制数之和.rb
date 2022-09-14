# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:14
# FilePath: P1022. 从根到叶的二进制数之和.rb
# Description: 

load 'common/TreeNode.rb'

def dfs(root, sum)
    return 0 if root.nil?
    sum = sum * 2 + root.val
    return sum if root.left.nil? and root.right.nil?
    dfs(root.left, sum) + dfs(root.right, sum)
end

# @param {TreeNode} root
# @return {Integer}
def sum_root_to_leaf(root)
    dfs(root, 0)
end

p sum_root_to_leaf(TreeNode.create("[1,0,1,0,1,0,1]"))


