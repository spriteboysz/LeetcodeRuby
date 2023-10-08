# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:13
# FilePath: LCR 054. 把二叉搜索树转换为累加树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {TreeNode}
def convert_bst(root)
    def dfs(root)
        return if root.nil?
        dfs(root.right)
        @acc += root.val
        root.val = @acc
        dfs(root.left)
    end

    @acc = 0
    dfs(root)
    root
end

if __FILE__ == $PROGRAM_NAME
    p convert_bst(TreeNode.create("[4,1,6,0,2,5,7,null,null,null,3,null,null,null,8]")).to_s
end


