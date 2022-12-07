import 'package:flutter/foundation.dart';

class User {
  String? get id => _id;
  final String username;
  final String photoUrl;
  String? _id;
  final bool active;
  final DateTime lastseen;

  User({
    required this.username,
    required this.photoUrl,
    required this.active,
    required this.lastseen,
  });

  toJson() => {
        'username': username,
        'photo_url': photoUrl,
        'active': active,
        'last_seen': lastseen
      };

  factory User.fromJson(Map<String, dynamic> json) {
    final user = User(
        username: json['username'],
        photoUrl: json['photo_url'],
        active: json['active'],
        lastseen: json['last_seen']);
    user._id = json['id'];
    return user;
  }
}
