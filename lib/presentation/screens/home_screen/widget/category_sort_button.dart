import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_practice/presentation/bloc/clothes_cubit.dart';

import '../model/product.dart';

class CategorySortButton extends StatefulWidget {
  const CategorySortButton({Key? key}) : super(key: key);

  @override
  State<CategorySortButton> createState() => _CategorySortButtonState();
}

class _CategorySortButtonState extends State<CategorySortButton> {

  String dropDownValue = 'Сортировать';


  final Map<String, dynamic> categoryItems = {
    'Сортировать': Category.ALL,
    'Мужская одежда': Category.MEN_S_CLOTHING,
    'Ювелирная': Category.JEWELERY,
    'Электроника': Category.ELECTRONICS,
    'Женская одежда': Category.WOMEN_S_CLOTHING,
  };

  final items = <String>{
    'Сортировать',
    'Мужская одежда',
    'Ювелирная',
    'Электроника',
    'Женская одежда',
  };
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.white,
      elevation: 5,
      underline: const SizedBox(),
      style: const TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
      iconEnabledColor: Colors.black,
      alignment: Alignment.center,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      icon: Transform.translate(
        offset: const Offset(-2, 0),
        child: const Icon(
          Icons.keyboard_arrow_down_rounded,
          size: 26,
        ),
      ),
      value: dropDownValue,
      items: items.map((String e) {
        return DropdownMenuItem<String>(
          child: Text(
            e,
            textAlign: TextAlign.left,
          ),
          alignment: Alignment.centerLeft,
          value: e,
        );
      }).toList(),
      onChanged: (String? newValue) {
        BlocProvider.of<ClothesCubit>(context)
            .categorySortProduct(categoryItems[newValue]!);
        setState(() {
          dropDownValue = newValue!;
        });
      },
    );
  }
}
