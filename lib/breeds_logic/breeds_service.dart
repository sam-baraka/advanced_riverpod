import 'package:advanced_riverpod/models/cat_breed.dart';
import 'package:dio/dio.dart';




class BreedsService {
  static Future<List<CatBreed>> getBreeds() async {
    try {
      Dio dio = Dio();
      var response = await dio.get('https://api.thecatapi.com/v1/breeds');
      List responseData = response.data;
      return responseData.map((e) => CatBreed.fromJson(e)).toList();
    } on DioError catch (e) {
      throw e.message;
    } catch (e) {
      rethrow;
    }
  }
}
