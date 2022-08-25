
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed.freezed.dart';
part 'cat_breed.g.dart';

@freezed
class CatBreed with _$CatBreed {
  factory CatBreed({
    String? name,
    String? description,
    Map<String,dynamic>? image,
  }) = _CatBreed;
	
  factory CatBreed.fromJson(Map<String, dynamic> json) =>
			_$CatBreedFromJson(json);
}
