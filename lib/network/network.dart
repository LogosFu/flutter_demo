import 'package:dio/dio.dart';
import 'package:flutterdemo/bean/android_info_entity.dart';
import 'package:flutterdemo/bean/belle_info_entity.dart';

class Network {
  static Dio _dio = Dio(BaseOptions(baseUrl: "https://gank.io/api/v2"));

  static Future<List<AndroidInfoData>> getDataList(
      {int page = 1, int count = 10}) {
    return _dio
        .get("/data/category/GanHuo/type/Android/page/$page/count/$count")
        .then((response) {
      AndroidInfoEntity androidInfoEntity = AndroidInfoEntity();
      return androidInfoEntity.fromJson(response.data).data;
    });
  }

  static Future<List<BelleInfoData>> getBelleList(
      {int page = 1, int count = 10}) {
    return _dio
        .get("/data/category/Girl/type/Girl/page/$page/count/$count")
        .then((response) {
      BelleInfoEntity belleInfoEntity = new BelleInfoEntity();
      return belleInfoEntity.fromJson(response.data).data;
    });
  }
}
