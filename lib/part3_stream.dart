// File: part3_stream.dart
Stream<String> messageStream() async* {
yield '1';
await Future.delayed(Duration(seconds: 1));
yield '2';
await Future.delayed(Duration(seconds: 1));
yield '3';
await Future.delayed(Duration(seconds: 1));
yield '4';
await Future.delayed(Duration(seconds: 1));
yield '5';
}

void listenToMessages() {
messageStream().listen((msg) {
print('New: $msg');
});
}
void main() {
listenToMessages();
print('List of numbers...');
}