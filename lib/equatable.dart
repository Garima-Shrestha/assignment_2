import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final String name;
  final int age;

  Person(this.name, this.age);

  @override
  List<Object?> get props {
    return [name, age]; // list of properties to compare
  }
}

void main() {
  Person p1 = Person('Ram', 20);
  Person p2 = Person('Ram', 20);

  print(p1 == p2);
}
