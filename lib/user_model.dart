class UserModel {
  final int id;
  final String name;
  final String? email;
  final int? age;
  final bool isActive;

  // Constructor dengan named parameters
  UserModel({
    required this.id,
    required this.name,
    this.email,
    this.age,
    required this.isActive,
  });

  // Factory constructor untuk mengubah JSON menjadi Object
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? 'Unknown',
      email: json['email'] as String?,
      age: json['age'] as int?,
      isActive: json['isActive'] as bool? ?? false,
    );
  }

  // Mengubah Object menjadi JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'age': age,
      'isActive': isActive,
    };
  }
}