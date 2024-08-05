void main(){
  print('first');
print('second');
print('third');


print('first');
Future(
() => print('second'),
);
print('third');


print('first');
Future(
() => print('second'),
);
Future.microtask(
() => print('third'),
);
print('fourth');



print('first');
Future(
() => print('second'),
).then(
(value) => print('third'),
);
Future(
() => print('fourth'),
);
print('fifth');



print('first');
Future.delayed(
Duration(seconds: 2),
() => print('second'),
);
print('third');


//challenges

print('1 synchronous');
Future(() => print('2 event queue')).then(
(value) => print('3 synchronous'),

);
Future.microtask(() => print('4 microtask queue'));
Future.microtask(() => print('5 microtask queue'));
Future.delayed(
Duration(seconds: 1),
() => print('6 event queue'),


);
Future(() => print('7 event queue')).then(
(value) => Future(() => print('8 event queue')),
);
Future(() => print('9 event queue')).then(
(value) => Future.microtask(
() => print('10 microtask queue'),
),
);
print('11 synchronous');
}
