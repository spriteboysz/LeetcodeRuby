# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:01
# FilePath: LCR 145. 判断对称二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Boolean}
def check_symmetric_tree(root)
    def dfs(p, q)
        return true if p.nil? and q.nil?
        return false if p.nil? or q.nil?
        return false if p.val != q.val
        dfs(p.left, q.right) and dfs(p.right, q.left)
    end

    return true if root.nil?
    dfs(root.left, root.right)
end

if __FILE__ == $PROGRAM_NAME
    p check_symmetric_tree(root = TreeNode.create("[6,7,7,8,9,9,8]")).to_s
end


