import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String username;
  final String email;
  final String? biography;

  UserModel({
    required this.username,
    required this.email,
    this.biography,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{
      'username': username,
      'email': email,
    };
    if (biography != null) {
      result['biography'] = biography;
    }
    return result;
  }

  factory UserModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return UserModel(
      username: data?['username'] ?? '',
      email: data?['email'] ?? '',
      biography: data?['biography'],
    );
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      biography: map['biography'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
