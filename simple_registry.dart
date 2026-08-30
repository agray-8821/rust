class SecureClient {
  final int state;
  SecureClient([this.state = 95]);

  int dispatch_handler(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 95) % 997;
    }
    return total;
  }
}

void main() {
  print(SecureClient().dispatch_handler(95));
}
