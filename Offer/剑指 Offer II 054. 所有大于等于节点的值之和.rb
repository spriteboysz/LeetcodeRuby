# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:32
# FilePath: 剑指 Offer II 054. 所有大于等于节点的值之和.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return if root.nil?
    dfs(root.right)
    @sum += root.val
    root.val = @sum
    dfs(root.left)
end

# @param {TreeNode} root
# @return {TreeNode}
def convert_bst(root)
    @sum = 0
    dfs(root)
    root
end

if __FILE__ == $PROGRAM_NAME
    p convert_bst(TreeNode.create("[4,1,6,0,2,5,7,null,null,null,3,null,null,null,8]")).to_s
end
