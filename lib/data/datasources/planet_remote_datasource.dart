import 'package:clean_architecture/core/exeptions/exeptions.dart';
import 'package:clean_architecture/data/models/planet_model.dart';
import 'package:clean_architecture/globals.dart';
import 'package:dio/dio.dart';

class PlanetRemoteDatasource {
  final String _url = "$url/api/planets";

  Future<List<PlanetModel>> getAll(int page) async {
    try {
      final res = await dio.get(
        "$_url?page=$page",
        options: Options(
          headers: {
            Headers.contentTypeHeader: 'application/json',
          },
        ),
      );

      List<dynamic> records = res.data['results'];

      return records.map((json) => PlanetModel.fromJson(json)).toList();
    } on DioError catch (e) {
      if (e.response != null) {
        throw ServerException();
      } else {
        throw InternetConnectionException();
      }
    }
  }

  Future<PlanetModel> get(int id) async {
    try {
      final res = await dio.get(
        "$_url/$id",
        options: Options(
          headers: {
            Headers.contentTypeHeader: 'application/json',
          },
        ),
      );

      return PlanetModel.fromJson(res.data);
    } on DioError catch (e) {
      if (e.response != null) {
        throw ServerException();
      } else {
        throw InternetConnectionException();
      }
    }
  }
}
