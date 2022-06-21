import 'package:bloc/bloc.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';

class AuthCubit extends Cubit<AuthViewState>{
  AuthCubit() : super(SignUpState());
}