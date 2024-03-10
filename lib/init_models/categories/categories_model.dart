import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoriesModel({
    required int id,
    required String name,
    required int orderNo,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
