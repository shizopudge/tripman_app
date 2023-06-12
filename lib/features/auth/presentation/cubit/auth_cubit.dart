import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures/fault.dart';
import '../../domain/usecases/login_by_apple.dart';
import '../../domain/usecases/login_by_google.dart';
import '../../domain/usecases/login_by_phone.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginByPhone _loginByPhone;
  final LoginByApple _loginByApple;
  final LoginByGoogle _loginByGoogle;
  AuthCubit(
      {required LoginByPhone loginByPhone,
      required LoginByApple loginByApple,
      required LoginByGoogle loginByGoogle})
      : _loginByPhone = loginByPhone,
        _loginByGoogle = loginByGoogle,
        _loginByApple = loginByApple,
        super(const AuthState.initial());

  void init() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    emit(const AuthState.loaded());
  }

  void loginByPhone() async {
    emit(const AuthState.loading());
    final result = await _loginByPhone.call(LoginByPhoneParams());
    result.fold((fault) => emit(AuthState.failure(fault)),
        (r) => emit(const AuthState.authenticated()));
  }

  void loginByApple() async {
    emit(const AuthState.loading());
    final result = await _loginByApple.call(LoginByAppleParams());
    result.fold((fault) => emit(AuthState.failure(fault)),
        (r) => emit(const AuthState.authenticated()));
  }

  void loginByGoogle() async {
    emit(const AuthState.loading());
    final result = await _loginByGoogle.call(LoginByGoogleParams());
    result.fold((fault) => emit(AuthState.failure(fault)),
        (r) => emit(const AuthState.authenticated()));
  }

  void refresh() => emit(const AuthState.loaded());
}
