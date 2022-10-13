import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_practice/presentation/bloc/auth/auth_bloc.dart';
import 'package:http_practice/presentation/bloc/clothes_cubit.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product_provider.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_screen.dart';
import 'package:http_practice/presentation/screens/home_screen/home_screen.dart';
import 'package:http_practice/presentation/screens/home_screen/model/api_request/api_request.dart';
import 'package:http_practice/presentation/screens/login/login_screen.dart';
import 'package:http_practice/presentation/screens/register/register_screen.dart';
import 'package:provider/provider.dart';

import 'behavior.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListCartProduct(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ClothesCubit>(
            create: (context) => ClothesCubit(apiRequest: ApiRequest())..getAddProduct(),
          ),
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(),
          ),
        ],
        child: MaterialApp(
          scrollBehavior: MyBehavior(),
          debugShowCheckedModeBanner: false,
          initialRoute: '/login',
          routes: {
            '/': (context) => const HomeScreen(),
            '/login': (context) => const LoginScreen(),
            '/cart_screen': (context) => const CartScreen(),
            '/register_screen': (context) => const RegisterScreen()
          },
        ),
      ),
    );
  }
}
