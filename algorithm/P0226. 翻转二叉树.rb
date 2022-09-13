# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 00:06
# FilePath: P0226. 翻转二叉树.rb
# Description: 

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
    return root if root.nil?

    left = invert_tree(root.left)
    right = invert_tree(root.right)
    root.right, root.left = left, right
    root
end

p invert_tree(TreeNode.create("[2,1,3]")).to_s



