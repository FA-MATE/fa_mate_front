import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_input_provider.g.dart';

@riverpod
class PostTitleInput extends _$PostTitleInput {
  @override
  TextEditingController build() {
    return TextEditingController();
  }

  void setState(String title) {
    state = TextEditingController(text: title);
  }
}

@riverpod
class PostDescriptionInput extends _$PostDescriptionInput {
  @override
  TextEditingController build() {
    return TextEditingController();
  }

  void setState(String desc) {
    state = TextEditingController(text: desc);
  }
}
