# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 16:41
# FilePath: P0572. 另一棵树的子树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
    return sub_root.nil? if root.nil?
    left = is_subtree(root.left, sub_root)
    right = is_subtree(root.right, sub_root)
    left || right || is_same(root, sub_root)
end

def is_same(root1, root2)
    return true if root1.nil? && root2.nil?
    return false if root1.nil? || root2.nil?
    return true if is_same(root1.left, root2.left) && is_same(root1.right, root2.right) && root1.val == root2.val
    false
end

if __FILE__ == $PROGRAM_NAME
    p is_subtree(TreeNode.create("[3,4,5,1,2]"), TreeNode.create("[4,1,2]"))
end
