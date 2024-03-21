import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/post/provider/post_upload_provider.dart';
import 'package:fa_mate_front/main.dart';
import 'package:fa_mate_front/utils/enum.dart';
import 'package:fa_mate_front/utils/post_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MyPostInfomationTags extends StatefulWidget {
  final String title;
  final String? selectItem;
  final bool isIconData;
  final List<dynamic> tags;
  final int id;
  final bool isTags;

  const MyPostInfomationTags({
    super.key,
    required this.isIconData,
    required this.title,
    this.selectItem,
    required this.tags,
    required this.id,
    required this.isTags,
  });

  @override
  State<MyPostInfomationTags> createState() => _MyPostInfomationTagsState();
}

class _MyPostInfomationTagsState extends State<MyPostInfomationTags> {
  int currentIndex = 0;
  final postUtil = PostUtils();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextDefaultWidget(
                  title: widget.title,
                ),
              ),
            ),
            TextDefaultWidget(
              title: widget.selectItem ??
                  SelectInfomation.essential.toStringName(),
              fontColor:
                  widget.selectItem == null ? Colors.black54 : AppColors.black,
            ),
            Gap(mq.width * .05),
            Icon(
              Iconsax.arrow_right_34,
              color: widget.isIconData ? AppColors.black : Colors.transparent,
            )
          ],
        ),
        Wrap(
          children: [
            ...widget.tags.asMap().entries.map(
              (e) {
                return Container(
                  margin: EdgeInsets.only(
                    right: mq.width * .02,
                  ),
                  child: Consumer(
                    builder: (context, ref, child) {
                      //** 入力中のModel */
                      final model = ref.watch(postUploadProvider);
                      dynamic modelList;
                      int? removeIndex;
                      if (widget.isTags) {
                        //** 編集可能なTagsを作成 */
                        modelList = model.tags?.toList();
                        //** 選択したTagのModel Indexを格納*/
                        removeIndex = modelList?.indexWhere(
                            (data) => data.tagGroup.id == widget.id);
                      } else {
                        //** 編集可能なConditionsを作成 */
                        modelList = model.conditions?.toList();
                        // ** 選択したConditionのModel Indexを格納*/
                        removeIndex = modelList?.indexWhere(
                            (data) => data.conditionGroup.id == widget.id);
                      }

                      return ChoiceChip(
                        selected: currentIndex == e.key,
                        onSelected: (value) {
                          setState(() {
                            currentIndex = e.key;
                            modelList?.removeAt(removeIndex);
                            if (widget.isTags) {
                              ref.read(postUploadProvider.notifier).setData(
                                  model.copyWith(
                                      tags: [...?modelList, e.value]));
                            } else {
                              ref.read(postUploadProvider.notifier).setData(
                                  model.copyWith(
                                      conditions: [...?modelList, e.value]));
                            }
                          });
                        },
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                        ),
                        label: TextDefaultWidget(
                          title: e.value.name,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: mq.width * .03,
                        ),
                        selectedColor: AppColors.tag,
                        showCheckmark: false,
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
