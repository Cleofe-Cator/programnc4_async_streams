// File: part3_stream.dart
Stream<String> messageStream() async* {
  for (int i = 1; i <= 5; i++) {
    yield i.toString();
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() {
  messageStream().listen((msg) {
    print('New: $msg');
  });
  print('List of numbers...');
}
