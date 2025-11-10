// // .then() [Future.delayed]
// Future<String> fetchData() {
//   return Future.delayed(Duration(seconds: 2), () {
//     return "Data loaded";
//   });
// }

// void main() {
//   print("Start");
//   fetchData().then((value) {
//     print(value); // prints after 2 seconds
//   });
//   print("End");
// }

// using async and await
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data loaded";
}

void main() async {
  print("Start");
  String data = await fetchData(); //waits here
  print(data);
  print("End");
}
