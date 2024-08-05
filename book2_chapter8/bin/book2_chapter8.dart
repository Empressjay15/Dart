//Starting With a Non‐Generic Integer Class
import 'dart:ffi';

void main(){
  final stringTree = createStringTree();

  final tree = createTree([7, 1, 9, 0, 5, 8]);
  (tree?.value);
print(tree?.leftChild?.value);
print(tree?.rightChild?.value);
print(tree?.leftChild?.leftChild?.value);
print(tree?.leftChild?.rightChild?.value);
print(tree?.rightChild?.leftChild?.value);
print(tree?.rightChild?.rightChild?.value);

var treee = BinarySearchTree<num>();
treee.insert(7);
treee.insert(1);
treee.insert(9);
treee.insert(0);
treee.insert(5);
treee.insert(8);

//challenges
final stack = IntStack();
  stack.push(9);
  stack.push(2);
  stack.push(5);
  stack.push(3);
  print(stack.pop());
  print(stack.peek());
  print(stack.isEmpty());
  print(stack);


//challenge 2
  final stringStack = Stack<String>();
  stringStack.push('nine');
  stringStack.push('two');
  stringStack.push('five');
  stringStack.push('three');
  print(stringStack.pop());
  print(stringStack.peek());
  print(stringStack.isEmpty());
  print(stringStack);



}

class IntNode {
IntNode(this.value);

int value;

IntNode? leftChild;
IntNode? rightChild;
}
IntNode createIntTree() {
final zero = IntNode(0);
final one = IntNode(1);
final five = IntNode(5);
final seven = IntNode(7);
final eight = IntNode(8);
final nine = IntNode(9);
seven.leftChild = one;
one.leftChild = zero;
one.rightChild = five;
seven.rightChild = nine;
nine.leftChild = eight;
return seven;
}

//Reimplementing the Tree With String Nodes
class StringNode {
StringNode(this.value);

String value;

StringNode? leftChild;
StringNode? rightChild;
}

StringNode createStringTree() {
final zero = StringNode('zero');
final one = StringNode('one');
final five = StringNode('five');
final seven = StringNode('seven');
final eight = StringNode('eight');
final nine = StringNode('nine');

seven.leftChild = one;
one.leftChild = zero;
one.rightChild = five;
seven.rightChild = nine;
nine.leftChild = eight;
return seven;
}

// Creating a Generic Node

class Node<T> {
Node(this.value);
T value;
Node<T>? leftChild;
Node<T>? rightChild;

//overriding the node class
@override
String toString() {
final left = leftChild?.toString() ?? '';
final parent = value.toString();
final right = rightChild?.toString() ?? '';
return '$left $parent $right';
}
}

//Creating Generic Functions
//Storing tree in a list


Node<E>? createTree<E>(List<E> nodes, [int index = 0]) {
// 2
if (index >= nodes.length) return null;
// 3
final node = Node(nodes[index]);
// 4
final leftChildIndex = 2 * index + 1;
final rightChildIndex = 2 * index + 2;
// 5
node.leftChild = createTree(nodes, leftChildIndex);
node.rightChild = createTree(nodes, rightChildIndex);
// 6
return node;
}



class BinarySearchTree<E extends Comparable<E>> {
Node<E>? root;


//The mothod added to the class
void insert(E value) {
root = _insertAt(root, value);
}
Node<E> _insertAt(Node<E>? node, E value) {
// 1
if (node == null) {
return Node(value);
}
// 2
if (value.compareTo(node.value) < 0) {
node.leftChild = _insertAt(node.leftChild, value);
} else {
node.rightChild = _insertAt(node.rightChild, value);
}
// 3
return node;
}
//overiding
@override
String toString() => root.toString();

}

//challenges
class IntStack{
  List<int> _list = [];

  void push(int value)=>_list.add(value);

  int pop()=>_list.removeLast();

  int peek() => _list.last;

   bool isEmpty()=> _list.isEmpty;

   @override
   String toString()=>_list.toString();
  
  }

//challenge 2
//Making the class above is changing the entire class to generic<E> and renaming the few things in the class like so

//challenge two
class Stack<E> {
  final List<E> _list = [];

  void push(E value) => _list.add(value);

  E pop() => _list.removeLast();

  E peek() => _list.last;

  bool isEmpty() => _list.isEmpty;

  @override
  String toString() => _list.toString();

}