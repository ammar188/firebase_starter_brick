import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState(stateEnum: UserStateEnum.initial)) {
    on<UserLoaded>(_onUserLoaded);
  }

  void _onUserLoaded(
    UserLoaded event,
    Emitter<UserState> emit,
  ) async {
    emit(UserState(stateEnum: UserStateEnum.loading));
  }
}
