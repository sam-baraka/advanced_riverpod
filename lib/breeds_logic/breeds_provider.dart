
import 'package:advanced_riverpod/breeds_logic/breeds_service.dart';
import 'package:advanced_riverpod/get_breeds_state/get_breeds_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getBreedsProvider =
    StateNotifierProvider<GetBreedsProvider, GetBreedsState>(
        (_) => GetBreedsProvider());

class GetBreedsProvider extends StateNotifier<GetBreedsState> {
  GetBreedsProvider() : super(GetBreedsState.initial());

  getBreeds() async {
    try {
      state = GetBreedsState.loading();
      var breeds = await BreedsService.getBreeds();
      state = GetBreedsState.success(breeds);
    } catch (e) {
      state = GetBreedsState.failed(e.toString());
    }
  }
}
