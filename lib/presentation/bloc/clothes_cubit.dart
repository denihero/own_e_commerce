import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_practice/presentation/screens/home_screen/model/api_request/api_request.dart';
import 'package:meta/meta.dart';
import '../screens/home_screen/model/product.dart';
import 'package:equatable/equatable.dart';

part 'clothes_cubit.freezed.dart';
part 'clothes_state.dart';

class ClothesCubit extends Cubit<ClothesState> {
  ClothesCubit({required this.apiRequest}) : super(ClothesState.initial());


  final ApiRequest apiRequest;
  ConnectivityResult? connectivityResult;
  Connectivity? connectivity;

  void getAddProduct() async {
    try {
      emit(ClothesState.loading());
      if(await checkInternet()){
        final products = await apiRequest.getAllProduct();
        emit(ClothesState.loaded(product: products));
      }else{
        emit(ClothesState.noInternet());
      }
    } catch (e) {
      emit(ClothesState.error());
    }
  }

  void categorySortProduct(Category category) async {
    try {
      emit(ClothesState.loading());
      if(await checkInternet()){
        if (category == Category.ALL) {
          final products = await apiRequest.getAllProduct();
          emit(ClothesState.loaded(product: products));
        } else {
          final products = await apiRequest.getAllProduct();
          final sortResult = products.where((element) => element.category == category);
          emit(ClothesState.loaded(product: sortResult));
        }
      }else{
        emit(ClothesState.noInternet());
      }

    } catch (e) {
      emit(ClothesState.error());
    }
  }


  Future<bool> checkInternet() async {
    connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }else if (connectivityResult == ConnectivityResult.none) {
      return false;
    }

    return false;
  }

}
