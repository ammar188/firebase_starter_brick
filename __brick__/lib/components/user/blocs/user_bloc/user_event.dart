part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}


class UserLoaded extends UserEvent {
  final String id;

  const UserLoaded({required this.id});

  @override
  List<Object?> get props => [id];

  @override
  String toString() => 'UserLoaded{ id: $id }';
}

