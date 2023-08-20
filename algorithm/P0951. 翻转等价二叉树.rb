# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 21:37
# FilePath: P0951. 翻转等价二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def flip_equiv(root1, root2)
    return true if root1.nil? and root2.nil?
    return false if root1.nil? or root2.nil?
    return false if root1.val != root2.val
    if flip_equiv(root1.left, root2.left) and flip_equiv(root1.right, root2.right)
        return true
    end
    if flip_equiv(root1.left, root2.right) and flip_equiv(root1.right, root2.left)
        return true
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    root1 = TreeNode.create("[1,2,3,4,5,6,null,null,null,7,8]")
    root2 = TreeNode.create("[1,3,2,null,6,4,5,null,null,null,null,8,7]")
    p flip_equiv(root1, root2)
end


