class LiteCache {
  final int state;
  LiteCache([this.state = 17]);

  int fetch_session(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 17) % 997;
    }
    return result;
  }
}

void main() {
  print(LiteCache().fetch_session(17));
}
