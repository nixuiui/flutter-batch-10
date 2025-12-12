import 'package:equatable/equatable.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/app_database.dart';

class AuthState extends Equatable {

  final bool isAuthenticated;
  final bool? loading;
  final UserData? user;

  const AuthState({
    this.isAuthenticated = false,
    this.user,
    this.loading,
  });

  AuthState copyWith({
    bool? isAuthenticated,
    UserData? user,
    bool? loading,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      user: user ?? this.user,
      loading: loading ?? this.loading,
    );
  }

  @override
  List<Object?> get props => [isAuthenticated, user, loading];

}