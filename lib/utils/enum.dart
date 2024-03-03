enum Categories {
  dog,
  cat,
  bird;

  int toInt() {
    switch (this) {
      case dog:
        return 24;
      case cat:
        return 25;
      case bird:
        return 26;
      default:
        return -1;
    }
  }
}
