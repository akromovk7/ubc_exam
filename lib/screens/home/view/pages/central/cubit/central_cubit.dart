import 'package:bloc/bloc.dart';
import 'package:ubc_app/screens/home/view/pages/central/state/central_state.dart';

class CentralCubit extends Cubit<CentralState>{
  CentralCubit() : super(HomeState());
}