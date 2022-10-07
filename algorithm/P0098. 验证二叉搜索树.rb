# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 11:52
# FilePath: P0098. 验证二叉搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
    @values = []
    dfs(root)
    @values.each_with_index do |num, i|
        next if i == 0
        return false if @values[i - 1] >= num
    end
    true
end

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @values << root.val
    dfs(root.right)
end

if __FILE__ == $PROGRAM_NAME
    p is_valid_bst(TreeNode.create("[5,1,4,null,null,3,6]"))
    p is_valid_bst(TreeNode.create("[2,1,3]"))
end
