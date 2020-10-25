class User{
  final List skills;
  final String id;
  final String name;
  final String bio;
  
  final List communities; 
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
  
}