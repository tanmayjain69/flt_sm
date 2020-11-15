class QueryPost {
  final String id;
  final String userImage;
  final String username;
  final String details;
  final String tag;
  final String createdAt;
  final String updatedAt;
  QueryPost({
    this.id,
    this.userImage,
    this.username,
    this.details,
    this.tag,
    this.createdAt,
    this.updatedAt
  });


factory QueryPost.fromJson(Map<String, dynamic> parsedJson) {
  return new QueryPost(
      id: parsedJson['_id'],
      username: parsedJson['name'],
      details: parsedJson['details'],
      tag:  parsedJson['tag'],
      userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg"
  );
  
}
}