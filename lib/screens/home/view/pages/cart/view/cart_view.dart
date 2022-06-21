import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ubc_app/screens/home/view/pages/cart/cubit/cart_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/cart/state/cart_state.dart';
import 'package:ubc_app/screens/home/view/pages/cart/view/pages/cancel_order.dart';
import 'package:ubc_app/screens/home/view/pages/cart/view/pages/my_bag.dart';
import 'package:ubc_app/screens/home/view/pages/cart/view/pages/my_cart.dart';
import 'package:ubc_app/screens/home/view/pages/cart/view/pages/my_order_detail.dart';
import 'package:ubc_app/screens/home/view/pages/cart/view/pages/my_order_status.dart';
import 'package:ubc_app/screens/home/view/pages/cart/view/pages/my_orders.dart';
import 'package:ubc_app/screens/home/view/pages/cart/view/pages/my_orders_history.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: notificationScaffold(),
    );
  }

  Scaffold notificationScaffold() => Scaffold(
        body: BlocConsumer<CartCubit, CartState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is MyCartState) {
              return MyCartView();
            } else if (state is MyBagState) {
              return MyBagView();
            } else if (state is MyOrdersState) {
              return MyOrdersView();
            } else if (state is MyOrderStatusState) {
              return MyOrderStatusView();
            } else if (state is MyOrderDetailState) {
              return MyOrderDetailView();
              } else if (state is MyOrderHistoryState) {
              return MyOrdersHistory();
              } else if (state is CancelOrderFormState) {
              return CancelOrderView();
            } else {
              return SizedBox();
            }
          },
        ),
      );
}
