class User {
  final String? avatar_url;
  final int? followers;
  final int? following;
  final String? name;
  final String? bio;
  final String? login;

  User({
    this.avatar_url,
    this.name,
    this.bio,
    this.login,
    this.followers,
    this.following,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      avatar_url: json['avatar_url'],
      name: json['name'],
      bio: json['bio'],
      login: json['login'],
      followers: json['followers'],
      following: json['following'],
    );
  }
}
