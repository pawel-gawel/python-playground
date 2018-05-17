#!/usr/local/bin/python3.6

# --- define a list 

l = [1, 2]
print(l)

print(list('napis'))

l.append(9)
print(l)

# --- lists are assigned by reference 

l2 = l
l.append(10)
print("same output ", l, l2)  # same output 


# -- insert - to the beginning of the list

l2.insert(0, 0)
print("added new element to the beginning of the list ", l2)


# --- to copy a list

l3 = l.copy()
l3.append(1000)
print("list is copied and modified ", l, l3)


# --- extending 

l3.extend('halo')
print("list have been extended ", l3)


# --- removing 

l3.remove(1000)
print("1000 was removed from list ", l3)

try:
  l3.remove('wtf')
except:
  print("removing unexisting element throws an exception")


# --- pop vs append

l3.append(['tak'])
l3.append(['halo'])
l3.pop()
l3.pop(5) # with index

print("appended and popped ", l3)


# --- slicing 
# with slicing you will get copy of the list 

print(l3[0:2])

# all but two last
print(l3[0:-2])

# 
eql = l3[:] == l3[0:len(l3)+1]
identity = l3[:] is l3[0:len(l3)+1]
print("equal?", eql, "identical?", identity)

# 
print(l3[::2])


# assignment with slicing on left side

l3[0:2] = ['A', 'B']
l3[0:0] = ['A', 'B'] # left side extend 

l3.extend(['a', 'b', 'c'])
print(l3)

