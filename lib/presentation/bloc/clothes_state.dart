part of 'clothes_cubit.dart';

@freezed
class ClothesState with _$ClothesState {
  factory ClothesState.initial() = _ClothesInitialState;
  factory ClothesState.loading() = _ClothesLoadingState;
  factory ClothesState.loaded({required Iterable<Product> product}) =
      _ClothesLoadedState;
  factory ClothesState.noInternet() = _ClothesNoInternet;
  factory ClothesState.error() = _ClothesError;
}
