class HybridRouter {
  final int state;
  HybridRouter([this.state = 15]);

  int render_resolver(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 15) % 997;
    }
    return total;
  }
}

void main() {
  print(HybridRouter().render_resolver(15));
}
