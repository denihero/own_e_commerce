import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_practice/presentation/bloc/clothes_cubit.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/cart_grid_widget.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/category_sort_button.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/drawer_widget.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/filter_sort_button.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/shimmer_loading_widget.dart';
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
    final state = context.read<ClothesCubit>().state;
    final double itemHeight = MediaQuery.of(context).size.height / 4.7;
    final double itemWidth = MediaQuery.of(context).size.width / 3.3;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(251, 250, 245, 1),
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
              style: TextStyle(color: Colors.black87),
            ),
          ),
          drawer: const DrawerWidget(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(child: CategorySortButton()),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: state.when(
                      initial: () => const SizedBox(),
                      loading: () => GridView.builder(
                          addAutomaticKeepAlives: true,
                          shrinkWrap: true,
                          //physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: (itemWidth / itemHeight),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 4),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const ShimmerLoadingWidget();
                          }),
                      loaded: (product) => GridCart(
                        product: product.map((e) => e).toList(),
                      ),
                      noInternet: () => const Text('There\'s no internet'),
                      error: () => const Text(
                        'No internet connection',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
