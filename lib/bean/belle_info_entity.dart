import 'package:flutterdemo/generated/json/base/json_convert_content.dart';
import 'package:flutterdemo/generated/json/base/json_filed.dart';

class BelleInfoEntity with JsonConvert<BelleInfoEntity> {
	List<BelleInfoData> data;
	int page;
	@JSONField(name: "page_count")
	int pageCount;
	int status;
	@JSONField(name: "total_counts")
	int totalCounts;
}

class BelleInfoData with JsonConvert<BelleInfoData> {
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
