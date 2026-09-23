class User {
  final String id;
  final String name;
  final String email;
  final UserRole role;
  final String? clubId;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.clubId,
  });
}

enum UserRole { owner, admin, coach, user }
