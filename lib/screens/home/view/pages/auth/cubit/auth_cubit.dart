import 'package:bloc/bloc.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(SignUpState());

bool _isShown = false;

  get getShown => _isShown;

  void obSecure() {
    _isShown = !_isShown;
  }

  changeState(AuthState state) {
    emit(state);
  }
}