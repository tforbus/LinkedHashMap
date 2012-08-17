LinkedHashMap for Objective-C
=====
An implementation of Java's LinkedHashMap for Objective-C. This provides 
constant time insertion, removal, and retrieval objects, much like the 
NSDictionary, but also preserves the order of insertion. 

DoubleLinkedLists are used to keep track of the order of insertion of the 
elements. Using lists provide constant time insertion, and constant time 
removal if you know exactly where the node is in the list.

By using an additional NSDictionary to keep map the keys to the nodes inserted 
into the lists, each node can be accessed in constant time, providing constant 
time insertion, removal, and lookup.

v1:
Using DoubleLinkedLists to keep track of keys and values, which is consuming 
a lot of space. I wouldn't use this for a very large project probably. 
