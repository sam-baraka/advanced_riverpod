import 'package:advanced_riverpod/models/cat_breed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_breeds_state.freezed.dart';

@freezed
class GetBreedsState with _$GetBreedsState {
  factory GetBreedsState.initial() = _Initial;
  factory GetBreedsState.loading() = _Loading;
  factory GetBreedsState.success(List<CatBreed> breeds) = _Success;
  factory GetBreedsState.failed(String e) = _Failed;
}
