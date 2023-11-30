import 'package:json_annotation/json_annotation.dart';

part 'base_model.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
  createToJson: false,
)
class BaseModel<T> {
  final int? status;
  final String? message;
  final T? data;

  BaseModel({this.status, this.message, this.data});

  factory BaseModel.fromJson(
          Map<String, dynamic> map, T Function(dynamic) fromJsonT) =>
      _$BaseModelFromJson(map, fromJsonT);
}
