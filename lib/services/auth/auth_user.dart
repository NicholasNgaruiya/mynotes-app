import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final String? email;
  final bool isEmailVerifed;
  const AuthUser({
    required this.email,
    required this.isEmailVerifed,
  });
  factory AuthUser.fromFirebase(User user) => AuthUser(
        email: user.email,
        isEmailVerifed: user.emailVerified,
      );
}
