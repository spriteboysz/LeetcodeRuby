# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 16:59
# FilePath: P1309. 解码字母到整数映射.rb
# Description: 

# @param {String} s
# @return {String}
def freq_alphabets(s)
    hash = Hash.new("a")
    (10..26).zip("j".."z").each { |k, v| hash[k.to_s + "#"] = v }
    (1..9).zip("a".."i").each { |k, v| hash[k.to_s] = v }
    hash.each_pair { |k, v| s.gsub!(k, v) }
    s
end

p freq_alphabets(s = "1326#")



