import 'dart:developer';
import 'package:fa_mate_front/common/widgets/tag_widget.dart';
import 'package:fa_mate_front/providers/tag_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostScreen extends ConsumerWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tags = ref.watch(getTagProvider);
    log(tags.toString());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("Btn"),
      ),
      body: tags.when(
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (data) {
          return SafeArea(
            child: TagWidget(title: data[0].name),
          );
        },
      ),
    );
  }
}
