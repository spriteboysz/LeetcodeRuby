# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 21:26
# FilePath: P2236. 判断根结点是否等于子结点之和.rb
# Description: 2236. 判断根结点是否等于子结点之和

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @return {Boolean}
def check_tree(root)
    root.val.equal?(root.left.val + root.right.val)
end

root = TreeNode.new(5)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)

p check_tree(root)



