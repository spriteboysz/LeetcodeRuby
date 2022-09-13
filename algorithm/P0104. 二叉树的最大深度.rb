# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:55
# FilePath: P0104. 二叉树的最大深度.rb
# Description: 

load 'common/TreeNode.rb'

def max_depth(root)
    return 0 if root.nil?
    [max_depth(root.left), max_depth(root.right)].max + 1
end

p max_depth(TreeNode.create([3, 9, 20, null, null, 15, 7]))




