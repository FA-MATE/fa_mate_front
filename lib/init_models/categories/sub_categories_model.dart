import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_categories_model.g.dart';
part 'sub_categories_model.freezed.dart';

@freezed
class SubCategoriesModel with _$SubCategoriesModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SubCategoriesModel({
    required int id,
    required String name,
    required int orderNo,
  }) = _SubCategoriesModel;

  factory SubCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoriesModelFromJson(json);
}
