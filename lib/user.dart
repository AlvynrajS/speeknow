class User {
  int? userId;
  int? id;
  String? title;

  User({this.userId, this.id, this.title});

  factory User.fromJson(Map<String, dynamic> Json) => User(
        userId: Json['userId'] as int?,
        id: Json['id'] as int?,
        title: Json['title'] as String,
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
      };
}
