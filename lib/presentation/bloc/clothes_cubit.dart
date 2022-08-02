import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http_practice/presentation/screens/home_screen/model/api_request/api_request.dart';
import 'package:meta/meta.dart';
import '../screens/home_screen/model/product.dart';
import 'package:equatable/equatable.dart';
part 'clothes_state.dart';

class ClothesCubit extends Cubit<ClothesState> {
  ClothesCubit({required this.apiRequest}) : super(ClothesInitial()) {
    getAddProduct();
  }

  final ApiRequest apiRequest;

  void getAddProduct() async {
    try {
      emit(ClothesLoading());
      var connectivityResult = await (Connectivity().checkConnectivity());
      print(connectivityResult);
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        final products = await apiRequest.getAllProduct();
        emit(ClothesLoaded(products));
      } else if (connectivityResult == ConnectivityResult.none) {
        emit(ClothesNoInternet());
      }
    } catch (e, s) {
      print(e);
      print(s);
      emit(ClothesError());
    }
  }

  void sortAllProduct(Category category) async {
    try {
      emit(ClothesLoading());
      var connectivityResult = await (Connectivity().checkConnectivity());
      print(connectivityResult);
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        if (category == Category.ALL) {
          final products = await apiRequest.getAllProduct();
          emit(ClothesLoaded(products));
        } else {
          final products = await apiRequest.getAllProduct();
          final key = products.where((element) => element.category == category);
          emit(ClothesLoaded(key));
        }
      } else if (connectivityResult == ConnectivityResult.none) {
        emit(ClothesNoInternet());
      }
    } catch (e, s) {
      print(e);
      print(s);
      emit(ClothesError());
    }
  }
}
