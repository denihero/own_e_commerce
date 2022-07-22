import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_practice/presentation/bloc/clothes_cubit.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_screen.dart';
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
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
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
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                    margin: EdgeInsets.only(bottom: 0, top: 0),
                    padding: EdgeInsets.only(top: 130, left: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'User name',
                      style: TextStyle(fontSize: 20),
                    )),
                ListTile(
                  title: const Text('Home Screen'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                ),
                ListTile(
                  title: const Text('Cart'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  CartScreen()));
                  },
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(child: BlocBuilder<ClothesCubit, ClothesState>(
              builder: (context, state) {
                if (state is ClothesLoading) {
                  return const CircularProgressIndicator(
                    color: Colors.black,
                  );
                } else if (state is ClothesError) {
                  return const Text('Something get wrong');
                } else if (state is ClothesLoaded) {
                  final product = state.product;
                  return GridCart(
                    product: product,
                  );
                }
                return Container();
              },
            )),
          )),
    );
  }
}
