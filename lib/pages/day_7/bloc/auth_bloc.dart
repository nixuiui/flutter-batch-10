import 'package:flutter_batch_10/pages/day_7/bloc/auth_state.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/services/user_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Cubit<AuthState> {

  final UserDataService userData;
  
  AuthBloc(
    this.userData,
  ) : super(AuthState());

  void logIn(String email, String password) async {
    emit(state.copyWith(loading: true));
    final user = await userData.login(email, password);
    if (user != null) {
      emit(state.copyWith(isAuthenticated: true, user: user, loading: false));
    } else {
      emit(state.copyWith(loading: false));
    }
  }

  void logOut() => emit(state.copyWith(isAuthenticated: false));

}