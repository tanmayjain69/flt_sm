class User{
  final List<String> skills;
  final String id;
  final String name;
  final String bio;
  
  final List<String> communities; 
  final String fname;
  final String lname;
  final int followers;
  final int following;
  final int posts;

  User(
    {
      this.skills,
      this.id,
      this.communities,
      this.name,
      this.lname,
      this.fname,
      this.bio,
      this.followers,
      this.following,
      this.posts
    });

  factory User.fromJson(Map<String, dynamic> parsedJson) {
  var skillsFromJson = parsedJson['Skills'];
  List<String> skillsList = new List<String>.from(skillsFromJson);
  var communitiesFromJson = parsedJson['Communities'];
  List<String> communitiesList = new List<String>.from(communitiesFromJson);
  return new User(
      skills: skillsList,
      id: parsedJson['_id'],
      communities: communitiesList,
      name: parsedJson['name'],
      lname: parsedJson['LastName'],
      fname: parsedJson['FirstName'],
      bio: parsedJson['Bio'],
      followers: parsedJson['Followers'],
      following: parsedJson['Following'],
      posts: parsedJson['Posts']

  );
  
}
  
}