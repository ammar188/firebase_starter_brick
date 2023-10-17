import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/auth_repository.dart';
import '../../models/email.dart';
import '../../models/password.dart';
import '../email_status.dart';
import '../form_status.dart';
import '../password_status.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepository _authRepository;

  SignInCubit({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SignInState());

  void emailChanged(String value) {
    try {
      Email email = Email((email) => email..value = value);
      emit(
        state.copyWith(
          email: email,
          emailStatus: EmailStatus.valid,
        ),
      );
    } on ArgumentError {
      emit(state.copyWith(emailStatus: EmailStatus.invalid));
    }
  }

  void passwordChanged(String value) {
    try {
      Password password = Password((password) => password..value = value);
      emit(
        state.copyWith(
          password: password,
          passwordStatus: PasswordStatus.valid,
        ),
      );
    } on ArgumentError {
      emit(state.copyWith(passwordStatus: PasswordStatus.invalid));
    }
  }

  Future<void> signIn() async {
    if (!(state.emailStatus == EmailStatus.valid) ||
        !(state.passwordStatus == PasswordStatus.valid)) {
      emit(state.copyWith(formStatus: FormStatus.invalid));
      emit(state.copyWith(formStatus: FormStatus.initial));
      return;
    }

    emit(state.copyWith(formStatus: FormStatus.submissionInProgress));
    try {
      try {
        await _authRepository.signIn(
          email: state.email!.value,
          password: state.password!.value,
        );
      } on ArgumentError catch (error) {
        throw Exception(error);
      } catch (error) {
        throw Exception(error);
      }
      emit(state.copyWith(formStatus: FormStatus.submissionSuccess));
    } catch (err) {
      emit(state.copyWith(formStatus: FormStatus.submissionFailure));
    }
  }
}
