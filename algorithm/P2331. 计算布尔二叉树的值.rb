# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:23
# FilePath: P2331. 计算布尔二叉树的值.rb
# Description: 

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @return {Boolean}
def evaluate_tree(root)
    return root.val == 1 ? true : false if root.left.nil? and root.right.nil?
    return (evaluate_tree(root.left) or evaluate_tree(root.right)) if root.val == 2
    evaluate_tree(root.left) and evaluate_tree(root.right)
end

p evaluate_tree(TreeNode.create("[2,1,3,null,null,0,1]"))



