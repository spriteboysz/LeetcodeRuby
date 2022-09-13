# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:57
# FilePath: 剑指 Offer 27. 二叉树的镜像.rb
# Description: 

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @return {TreeNode}
def mirror_tree(root)
    return root if root.nil?
    left = mirror_tree(root.left)
    right = mirror_tree(root.right)
    root.left, root.right = right, left
    root
end

p mirror_tree(TreeNode.create("[4,2,7,1,36,9]")).to_s



