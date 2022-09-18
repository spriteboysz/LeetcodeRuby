# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 17:35
# FilePath: P0783. 二叉搜索树节点最小距离.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @values << root.val
    dfs(root.right)
end

# @param {TreeNode} root
# @return {Integer}
def min_diff_in_bst(root)
    @values = []
    dfs(root)
    minimum = 10001
    @values.each_with_index do |num, i|
        next if i == 0
        minimum = [minimum, num - @values[i - 1]].min
        break if minimum == 1
    end
    minimum
end

if __FILE__ == $PROGRAM_NAME
    p min_diff_in_bst(TreeNode.create("[5,0,30,null,null,12,49]"))
end
