import 'package:bloc/bloc.dart';
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
      final products = await apiRequest.getAllProduct();
      emit(ClothesLoaded(products));
    } catch (e) {
      emit(ClothesError());
    }
  }
}
