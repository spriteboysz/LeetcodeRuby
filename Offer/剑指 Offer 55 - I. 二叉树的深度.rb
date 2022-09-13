# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:52
# FilePath: 剑指 Offer 55 - I. 二叉树的深度.rb
# Description: 

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    return 0 if root.nil?
    [max_depth(root.left), max_depth(root.right)].max + 1
end

root = "[3,9,20,null,null,15,7]"
p max_depth(TreeNode.create(root))



