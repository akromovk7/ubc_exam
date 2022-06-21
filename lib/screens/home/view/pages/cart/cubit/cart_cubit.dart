import 'package:bloc/bloc.dart';
import 'package:ubc_app/screens/home/view/pages/cart/state/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(MyCartState());
}
