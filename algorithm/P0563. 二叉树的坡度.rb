# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 16:36
# FilePath: P0563. 二叉树的坡度.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def find_tilt(root)
    @tilt = 0
    dfs(root)
    @tilt
end

def dfs(root)
    return 0 if root.nil?
    left, right = dfs(root.left), dfs(root.right)
    @tilt += (left - right).abs
    root.val + left + right
end

if __FILE__ == $PROGRAM_NAME
    p find_tilt(TreeNode.create("[4,2,9,3,5,null,7]"))
end
