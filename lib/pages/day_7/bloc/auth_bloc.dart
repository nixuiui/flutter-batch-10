import 'dart:convert';

import 'package:flutter_batch_10/pages/day_7/bloc/auth_state.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/app_database.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/services/user_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class AuthBloc extends Cubit<AuthState> {

  final UserDataService userData;
  final Box userBox;
  
  AuthBloc(
    this.userData,
    this.userBox,
  ) : super(AuthState());

  bool checkAuthentication() {
    final storedUser = userBox.get('user') != null ? UserData.fromJson(jsonDecode(userBox.get('user'))) : null;
    final isAuthenticated = storedUser != null;
    emit(state.copyWith(isAuthenticated: isAuthenticated, user: storedUser));
    return isAuthenticated;
  }

  void logIn(String email, String password) async {
    emit(state.copyWith(loading: true));
    final user = await userData.login(email, password);
    if (user != null) {
      emit(state.copyWith(isAuthenticated: true, user: user, loading: false));
      userBox.put('user', jsonEncode(user.toJson()));
    } else {
      emit(state.copyWith(loading: false));
    }
  }

  void logOut() => emit(state.copyWith(isAuthenticated: false));

}