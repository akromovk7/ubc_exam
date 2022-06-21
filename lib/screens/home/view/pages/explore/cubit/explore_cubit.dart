import 'package:bloc/bloc.dart';
import 'package:ubc_app/screens/home/view/pages/explore/state/explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit() : super(SearchState());
}
