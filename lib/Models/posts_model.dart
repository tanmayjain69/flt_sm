class Post {
  final String id;
  final String userImage;
  final String username;
  final String postImage;
  final String caption;
  final String tag;
  final int likes;
  final int rewards;
  final List<String> comments;

  Post({
    this.id,
    this.userImage,
    this.username,
    this.postImage,
    this.caption,
    this.tag,
    this.likes,
    this.rewards,
    this.comments
  });

  factory Post.fromJson(Map<String, dynamic> parsedJson) {
    var commentsFromJson = parsedJson['Comments'];
    List<String> comments = new List<String>.from(commentsFromJson);
  return new Post(
      id: parsedJson['_id'],
      username: parsedJson['name'],
      caption: parsedJson['Caption'],
      tag:  parsedJson['tag'],
      likes: parsedJson['Likes'],
      rewards: parsedJson['Rewards'],
      comments:comments,
      userImage: "https://www.aceshowbiz.com/images/photo/robert_downey_jr_.jpg",
      postImage: parsedJson['Image']
  );
  
}
}