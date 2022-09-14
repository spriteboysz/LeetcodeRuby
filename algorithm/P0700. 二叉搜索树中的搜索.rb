# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 21:00
# FilePath: P0700. 二叉搜索树中的搜索.rb
# Description: 

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
    return nil if root.nil?

    if root.val > val
        search_bst(root.left, val)
    elsif root.val < val
        search_bst(root.right, val)
    else
        root
    end
end

p search_bst(TreeNode.create("[4,2,7,1,3]"), 2).to_s
p search_bst(TreeNode.create("[4,2,7,1,3]"), 5).to_s



