part of 'user_bloc.dart';

enum UserStateEnum { initial, loading, success, failure }


class UserState extends Equatable {
  final UserStateEnum stateEnum;
  final User? user;
  final Exception? exception;

  const UserState({
    required this.stateEnum,
    this.user,
    this.exception,
  });

  UserState copyWith({
    UserStateEnum? stateEnum,
    User? user,
    Exception? exception,
  }) {
    return UserState(
      stateEnum: stateEnum ?? this.stateEnum,
      user: user ?? this.user,
      exception: exception ?? this.exception,
    );
  }

  @override
  List<Object?> get props => [stateEnum, user, exception];

  @override
  String toString() {
    return 'UserState{stateEnum: $stateEnum, user: $user, exception: $exception}';
  }
}

