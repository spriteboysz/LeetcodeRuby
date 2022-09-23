# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:16
# FilePath: P0501. 二叉搜索树中的众数.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @hash[root.val] += 1
    dfs(root.right)
end

# @param {TreeNode} root
# @return {Integer[]}
def find_mode(root)
    @hash = Hash.new(0)
    dfs(root)
    maximum = @hash.values.max
    mode = []
    @hash.each_pair { |k, v| mode << k if v == maximum }
    mode
end

if __FILE__ == $PROGRAM_NAME
    p find_mode(TreeNode.create("[1,null,2,2]"))
end
