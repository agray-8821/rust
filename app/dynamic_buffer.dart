class BatchResolver {
  final int state;
  BatchResolver([this.state = 72]);

  int dispatch_processor(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 72) % 997;
    }
    return total;
  }
}

void main() {
  print(BatchResolver().dispatch_processor(72));
}
