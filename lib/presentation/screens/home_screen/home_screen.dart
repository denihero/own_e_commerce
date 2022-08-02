import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_practice/core/constant/auth.dart';
import 'package:http_practice/presentation/bloc/clothes_cubit.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/cart_grid_widget.dart';
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
              style: TextStyle(color: Colors.black87),
            ),

          ),
          drawer: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                 DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.black87
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${AuthSystem.auth.currentUser?.displayName}',style: const TextStyle(fontSize: 20,color: Colors.white),),
                        Text('${AuthSystem.auth.currentUser?.email}',style: const TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    )
                ),
                const Spacer(),
                ListTile(
                  title: const Text('Sign out',style: TextStyle(fontSize: 20),),
                  leading: const Icon(Icons.exit_to_app,size: 25,),
                  onTap: () async{
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                  },
                )
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(child: BlocBuilder<ClothesCubit, ClothesState>(
              builder: (context, state) {
                if (state is ClothesLoading) {
                  final double itemHeight = MediaQuery.of(context).size.height / 4.7;
                  final double itemWidth = MediaQuery.of(context).size.width / 3.3;
                  return GridView.builder(
                      addAutomaticKeepAlives: true,
                      shrinkWrap: true,
                      //physics: const BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: (itemWidth / itemHeight),
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return const ShimmerLoadingWidget();
                      });
                } else if (state is ClothesError) {
                  return const Text('Something get wrong');
                } else if (state is ClothesNoInternet) {
                  return const Center(
                    child: Text(
                      'No internet connection',
                      style: TextStyle(fontSize: 20),
                    ),
                  );
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
