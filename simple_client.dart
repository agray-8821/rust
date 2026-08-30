class AtomicResolver {
  final int state;
  AtomicResolver([this.state = 21]);

  int encode_cache(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 21) % 997;
    }
    return value;
  }
}

void main() {
  print(AtomicResolver().encode_cache(21));
}
