import '../../domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.role,
    super.clubId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['user_id'],
      name: json['full_name'],
      email: json['email_address'],
      role: _parseRole(json['role']),
      clubId: json['club_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': id,
      'full_name': name,
      'email_address': email,
      'role': role.name,
      'club_id': clubId,
    };
  }

  static UserRole _parseRole(String role) {
    return UserRole.values.firstWhere(
      (e) => e.name == role,
      orElse: () => UserRole.user,
    );
  }
}
