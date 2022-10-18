import 'dart:async';

void main() {
  first();
  final firstTimer = Timer(const Duration(seconds: 2), second);
}

void first() {
  print("First");
}

void second() {
  print("Hello");
  final displayTimer = Timer(const Duration(seconds: 5), display);
}

void display() {
  print("World");
}
