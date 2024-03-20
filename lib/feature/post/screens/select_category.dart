import 'package:fa_mate_front/common/constant/app_icons.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/post/provider/post_selected_category.dart';
import 'package:fa_mate_front/feature/post/provider/post_upload_provider.dart';
import 'package:fa_mate_front/init_models/tags/tags_model.dart';
import 'package:fa_mate_front/main.dart';
import 'package:fa_mate_front/utils/enum.dart';
import 'package:fa_mate_front/utils/post_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({
    super.key,
    this.selectCategory,
  });
  final dynamic selectCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        leading: Consumer(builder: (context, ref, child) {
          return GestureDetector(
            onTap: () {
              context.pop();
              ref.invalidate(postSelectedCategoryNameProvider);
            },
            child: const Icon(
              AppIcons.backIcon,
            ),
          );
        }),
        shadowColor: Colors.black,
        title: Consumer(
          builder: (context, ref, child) {
            final title = ref.watch(postSelectedCategoryNameProvider);
            return Text(title);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: mq.height * .01),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: selectCategory.length,
          itemBuilder: (context, index) {
            return Consumer(
              builder: (context, ref, child) {
                final title = ref.watch(postSelectedCategoryNameProvider);
                final model = ref.watch(postUploadProvider);
                final postUtil = PostUtils();
                // dynamic model = ref.read(postUploadModelProvider);
                // model.categoryId = selectCategory.toList()[index].categoryId;

                return ListTile(
                  trailing: const Icon(AppIcons.arrowRight),
                  visualDensity: const VisualDensity(vertical: -4),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: mq.width * .06),
                  onTap: () {
                    switch (title) {
                      case "カテゴリ":
                        ref.read(postUploadProvider.notifier).setData(
                              model.copyWith(
                                categoryId: selectCategory.toList()[index].id,
                                subCategoryId: null,
                              ),
                            );
                        context.pop();
                        return;
                      case "品種":
                        ref.read(postUploadProvider.notifier).setData(
                            model.copyWith(
                                subCategoryId:
                                    selectCategory.toList()[index].id));

                        context.pop();
                        return;
                      case "地域":
                        List<TagsModel>? editModel =
                            postUtil.tagCheck(model, Tags.region.toInt());

                        ref.read(postUploadProvider.notifier).setData(model
                                .copyWith(tags: [
                              ...?editModel,
                              selectCategory.toList()[index]
                            ]));
                        context.pop();
                        return;
                      case "年齢":
                        List<TagsModel>? editModel =
                            postUtil.tagCheck(model, Tags.age.toInt());

                        ref.read(postUploadProvider.notifier).setData(model
                                .copyWith(tags: [
                              ...?editModel,
                              selectCategory.toList()[index]
                            ]));
                        context.pop();
                        return;
                      default:
                    }
                  },
                  title: TextDefaultWidget(
                      textAlign: TextAlign.left,
                      title: selectCategory.toList()[index].name),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
