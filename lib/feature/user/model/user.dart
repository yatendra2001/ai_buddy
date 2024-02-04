class User {
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.createdAt,
  });

  final String id;
  final String name;
  final String email;
  final String imageUrl;
  final DateTime createdAt;
}
