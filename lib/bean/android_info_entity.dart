import 'package:flutterdemo/generated/json/base/json_convert_content.dart';
import 'package:flutterdemo/generated/json/base/json_filed.dart';

class AndroidInfoEntity with JsonConvert<AndroidInfoEntity> {
  List<AndroidInfoData> data;
  int page;
  @JSONField(name: "page_count")
  int pageCount;
  int status;
  @JSONField(name: "total_counts")
  int totalCounts;
}

class AndroidInfoData with JsonConvert<AndroidInfoData> {
  @JSONField(name: "_id")
  String sId;
  String author;
  String category;
  String createdAt;
  String desc;
  List<String> images;
  int likeCounts;
  String publishedAt;
  int stars;
  String title;
  String type;
  String url;
  int views;
}
