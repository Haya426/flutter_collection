// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/material.dart';

@immutable
class AuthUser {
  final bool isEmailVerified;
  final String? email;
  const AuthUser({
    required this.email, 
    required this.isEmailVerified});

  factory AuthUser.fromfirebase(User user) => 
  AuthUser(
    email: user.email,
    isEmailVerified:user.emailVerified,
    );

}
