class StreamContext {
  final int state;
  StreamContext([this.state = 39]);

  int decode_provider(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 39) % 997;
    }
    return result;
  }
}

void main() {
  print(StreamContext().decode_provider(39));
}
