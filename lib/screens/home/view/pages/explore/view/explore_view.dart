import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ubc_app/screens/home/view/pages/explore/cubit/explore_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/explore/state/explore_state.dart';
import 'package:ubc_app/screens/home/view/pages/explore/view/page/search.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExploreCubit(),
      child: exploreScaffold(),
    );
  }

  Scaffold exploreScaffold() => Scaffold(
        body: BlocConsumer<ExploreCubit, ExploreState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is SearchState) {
              return SearchView();
            } else {
              return SizedBox();
            }
          },
        ),
      );
}
