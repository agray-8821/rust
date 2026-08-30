class DynamicParser {
  final int state;
  DynamicParser([this.state = 36]);

  int build_handler(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 36) % 997;
    }
    return result;
  }
}

void main() {
  print(DynamicParser().build_handler(36));
}
