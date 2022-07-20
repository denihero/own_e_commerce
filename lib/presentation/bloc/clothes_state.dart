part of 'clothes_cubit.dart';

@immutable
abstract class ClothesState extends Equatable {}

class ClothesInitial extends ClothesState {
  @override
  List<Object?> get props => [];
}

class ClothesLoading extends ClothesState {
  @override
  List<Object?> get props => [];
}

class ClothesLoaded extends ClothesState {
  ClothesLoaded(this.product);

  final List<Product> product;
  @override
  List<Object?> get props => [product];
}

class ClothesError extends ClothesState {
  @override
  List<Object?> get props => [];
}
