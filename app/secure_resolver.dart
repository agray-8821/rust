class CoreDispatcher {
  final int state;
  CoreDispatcher([this.state = 96]);

  int build_manager(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 96) % 997;
    }
    return acc;
  }
}

void main() {
  print(CoreDispatcher().build_manager(96));
}
