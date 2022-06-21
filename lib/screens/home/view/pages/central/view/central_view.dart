import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ubc_app/screens/home/view/pages/central/cubit/central_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/central/state/central_state.dart';
import 'package:ubc_app/screens/home/view/pages/central/view/pages/home_screen.dart';
import 'package:ubc_app/screens/home/view/pages/central/view/pages/coupon.dart';
import 'package:ubc_app/screens/home/view/pages/central/view/pages/detail.dart';
import 'package:ubc_app/screens/home/view/pages/central/view/pages/my_wishlist.dart';
import 'package:ubc_app/screens/home/view/pages/central/view/pages/category_vegatables.dart';
import 'package:ubc_app/screens/home/view/pages/central/view/pages/search_result.dart';
import 'package:ubc_app/screens/home/view/pages/explore/view/page/search.dart';

class CentralView extends StatelessWidget {
  const CentralView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CentralCubit(),
      child: centralScaffold(),
    );
  }

  Scaffold centralScaffold() => Scaffold(
        body: BlocConsumer<CentralCubit, CentralState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is HomeState) {
              return HomeView();
            } else if (state is DetailState) {
              return DetailView();
            } else if (state is MyWishlistState) {
              return MyWishlistView();
            } else if (state is CategoryVegatablesState) {
              return CategoryVegatablesView();
            } else if (state is CouponState) {
              return CouponView();
              } else if (state is SearchState) {
              return CouponView();
              } else if (state is SerachResultState) {
              return SearchView();
            } else {
              return SearchResultView();
            }
          },
        ),
      );
}
