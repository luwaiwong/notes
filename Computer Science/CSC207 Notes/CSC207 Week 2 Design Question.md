```plantuml 

interface MultiSet {
{abstract}{method} public boolean add(T)
{abstract}{method} public void remove(T)
{abstract}{method} public boolean contains(T)
{abstract}{method} public boolean is_empty()
{abstract}{method} public int count(T)
{abstract}{method} public int size()
}

class ArrayListMultiSet {
{field} private List<T> list
{method} public boolean add(T)
{method} public void remove(T)
{method} public boolean contains(T)
{method} public boolean is_empty()
{method} public int count(T)
{method} public int size()
}
class LinkedListMultiSet{
{field} public Node<T> front
{field} public int size
{method} public boolean add(T)
{method} public void remove(T)
{method} public boolean contains(T)
{method} public boolean is_empty()
{method} public int count(T)
{method} public int size()
}
class TreeMultiSet {
{field} private Tree<T> tree
{method} public boolean add(T)
{method} public void remove(T)
{method} public boolean contains(T)
{method} public boolean is_empty()
{method} public int count(T)
{method} public int size()
}
class Node {
{field} public T item
{field} Node<T> next
}

class Tree {
{field} private T root
{field} private List<Tree<T>> subtrees
{method} public boolean add(T)
{method} public void remove(T)
{method} public boolean contains(T)
{method} public boolean is_empty()
{method} public int count(T)
{method} public int size()
}
MultiSet --|> ArrayListMultiSet: Implements
MultiSet --|> LinkedListMultiSet: Implements
MultiSet --|> TreeMultiSet: Implements

LinkedListMultiSet *-- Node
TreeMultiSet *-- Tree
```
