#!/usr/bin/env python3

s = 'this is a long sentence that we are going to split and then join back again'
print(s.split()) # just split the s by the spaces into a list

print(s.split('s')) #split the s by the 's' as the separation demarcation
l = s.split() #split the sentence by the space into a list
print(l)
s1 = ' -- '.join(l)
print(s1)
