import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_practice/presentation/bloc/clothes_cubit.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/cart_grid_widget.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/shopping_cart_icon_widget.dart';

import 'package:http_practice/core/constant/string.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: const [
              Padding(
                  padding: EdgeInsets.only(right: 10, top: 5),
                  child: ShoppingCartWidget())
            ],
            title: const Text(
              Strings.homeScreenAppBarTitle,
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
                child: BlocBuilder<ClothesCubit,ClothesState>(
                  builder: (context,state){
                    if(state is ClothesLoading){
                      return const CircularProgressIndicator(
                        color: Colors.black,
                      );
                    }else if(state is ClothesError){
                      return const Text('Something get wrong');
                    }else if(state is ClothesLoaded){
                      final product = state.product;
                      return GridCart(
                        product: product,
                      );
                    }
                    return Container();
                  },
                )
            ),
          )),
    );
  }
}
