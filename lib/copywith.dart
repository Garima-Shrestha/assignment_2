class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  // copywith method
  Person copyWith({String? name, int? age}) {
    return Person(
      name: name ?? this.name, // if name is null, keep old value
      age: age ?? this.age, // if age is null, keep old value
    );
  }
}

void main() {
  Person p1 = Person(name: "Ram", age: 20);

  // Create a new person by copying p1 and changing age
  Person p2 = p1.copyWith(age: 25);

  print(p1.name);
  print(p1.age);
  print(p2.name);
  print(p2.age);
}
