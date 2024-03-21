import 'package:fa_mate_front/feature/post/provider/post_upload_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostUploadConfirmScreen extends ConsumerWidget {
  const PostUploadConfirmScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(postUploadProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("内容確認"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("title : ${data.title}"),
            Text("body : ${data.body}"),
            Text("category : ${data.categoryId}"),
            Text("subcategory : ${data.subCategoryId}"),
            Text("user : ${data.user}"),
            Text("tag : ${data.tags?.map((e) => e.name)}"),
            Text("condition : ${data.conditions?.map((e) => e.name)}"),
          ],
        ),
      ),
    );
  }
}
