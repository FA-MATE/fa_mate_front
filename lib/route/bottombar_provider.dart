import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bottombar_provider.g.dart';

//Bottom Index
@riverpod
class BottomCurrentIndex extends _$BottomCurrentIndex {
  @override
  int build() => 0;
  void setState(int index) {
    state = index;
  }
}
