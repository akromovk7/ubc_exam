import 'package:bloc/bloc.dart';
import 'package:ubc_app/screens/home/view/pages/settings/state/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(ProfileState());
}