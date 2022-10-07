# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 16:52
# FilePath: P0606. 根据二叉树创建字符串.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {String}
def tree2str(root)
    return "" if root.nil?
    return root.val.to_s if root.left.nil? && root.right.nil?
    return root.val.to_s + "(" + tree2str(root.left) + ")" if root.right.nil?
    root.val.to_s + "(" + tree2str(root.left) + ")(" + tree2str(root.right) + ")"
end

if __FILE__ == $PROGRAM_NAME
    p tree2str(TreeNode.create("[1,2,3,null,4]"))
end
