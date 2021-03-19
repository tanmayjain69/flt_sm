import 'package:intl/intl.dart';

class QueryPost {
  final String id;
  final String userImage;
  final String username;
  final String details;
  final String tag;
  final String createdAt;
  final String updatedAt;
  final String date;
  QueryPost({
    this.id,
    this.userImage,
    this.username,
    this.details,
    this.tag,
    this.createdAt,
    this.updatedAt,
    this.date
  });


factory QueryPost.fromJson(Map<String, dynamic> parsedJson) {
  String dat = (DateFormat('d MMM, yyyy')).format(DateTime.parse(parsedJson['createdAt']));
  return new QueryPost(
      id: parsedJson['_id'],
      username: parsedJson['name'],
      details: parsedJson['details'],
      tag:  parsedJson['tag'],
      userImage: "https://www.aceshowbiz.com/images/photo/robert_downey_jr_.jpg",
      date: dat
  );
  
}
}