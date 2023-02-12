import 'package:app_land/feature/auth/repos/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService repository;
  LoginBloc(this.repository) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      repository.getProfile(); // ตัวอย่างการเรียกใช้
    });
  }
}
