import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nubi/model/User.dart';

// import '../../repositories/user_repository.dart';
// import '../../utils/auth.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetUser>((event, emit) async {
      emit(UserLoading());
      try {
        // String token = await Auth().getToken();

        // final User user = await UserRepository().getUser(token);
        final User user = User.fromJson({
          "id": 1,
          "name": "Admin",
          "nik": "1234567890",
          "email": "test@mail.com"
        });
        emit(UserLoadSuccess(user, "token"));
      } catch (error) {
        emit(UserLoadFailure(error: error.toString()));
      }
    });
  }
}
