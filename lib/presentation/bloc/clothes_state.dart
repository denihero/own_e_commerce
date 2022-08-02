part of 'clothes_cubit.dart';

@immutable
abstract class ClothesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ClothesInitial extends ClothesState {}

class ClothesLoading extends ClothesState {}

class ClothesLoaded extends ClothesState {
  ClothesLoaded(this.product);

  final Iterable<Product> product;
  @override
  List<Object?> get props => [product];
}

class ClothesError extends ClothesState {}
class ClothesNoInternet extends ClothesState{}