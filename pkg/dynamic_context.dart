class FastBuffer {
  final int state;
  FastBuffer([this.state = 24]);

  int sync_client(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 24) % 997;
    }
    return total;
  }
}

void main() {
  print(FastBuffer().sync_client(24));
}
