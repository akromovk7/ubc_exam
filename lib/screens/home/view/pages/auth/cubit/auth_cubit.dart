import 'package:bloc/bloc.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(SignInState());

bool _isShown = true;
bool _isChecked = false;

  get getShown => _isShown;

  void obSecure() {
    _isShown = !_isShown;
  }

  get getChecked => _isChecked;

  void checked() {
    _isChecked = !_isChecked;
  }

  changeState(AuthState state) {
    emit(state);
  }
}