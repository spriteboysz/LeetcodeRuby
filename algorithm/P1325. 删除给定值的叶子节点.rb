# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:37
# FilePath: P1325. 删除给定值的叶子节点.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} target
# @return {TreeNode}
def remove_leaf_nodes(root, target)
    return if root.nil?
    root.left = remove_leaf_nodes(root.left, target)
    root.right = remove_leaf_nodes(root.right, target)
    if root.left.nil? && root.right.nil? && root.val == target
        return nil
    end
    root
end

if __FILE__ == $PROGRAM_NAME
    p remove_leaf_nodes(TreeNode.create("[1,2,null,2,null,2]"), 2).to_s
end
