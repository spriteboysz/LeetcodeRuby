# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 13:13
# FilePath: P0150. 逆波兰表达式求值.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
    stack = []
    tokens.each do |token|
        case token
        when '+' then
            stack.push(stack.pop + stack.pop)
        when '-' then
            stack.push(-stack.pop + stack.pop)
        when '*' then
            stack.push(stack.pop * stack.pop)
        when '/' then
            stack.push((1.0 / stack.pop * stack.pop).to_i)
        else
            stack.push(token.to_i)
        end
    end
    stack.pop
end

if __FILE__ == $PROGRAM_NAME
    p eval_rpn(%w[2 1 + 3 *])
    p eval_rpn(%w[10 6 9 3 + -11 * / * 17 + 5 +])
end


