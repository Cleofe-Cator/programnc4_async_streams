// File: part1_future.dart
Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Your name is Cator!';
  });
}

void main() async {
  print('Getting your name...');
  String message = await getNameLater();
  print(message);
}
