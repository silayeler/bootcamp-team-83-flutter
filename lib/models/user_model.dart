import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String name;
  final String surname;
  final String email;
  final String? profilePicture;
  final DateTime? createdAt;

  UserModel({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
    this.profilePicture,
    this.createdAt,
  });

  factory UserModel.fromMap(String id, Map<String, dynamic> data) {
    return UserModel(
      id: id,
      name: data['name'] ?? '',
      surname: data['surname'] ?? '',
      email: data['email'] ?? '',
      profilePicture: data['profilePicture'],
      createdAt: (data['createdAt'] as Timestamp?)?.toDate(),
    );
  }

<<<<<<< HEAD
  get nameController => null;

=======
>>>>>>> 702b2a817d2274767e75a51103a9f43537e02c20
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'email': email,
      'profilePicture': profilePicture,
      'createdAt': createdAt != null ? Timestamp.fromDate(createdAt!) : FieldValue.serverTimestamp(),
    };
  }
}