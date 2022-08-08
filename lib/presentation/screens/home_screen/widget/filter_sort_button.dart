import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';

class FilterSortButton extends StatefulWidget {
  const FilterSortButton({Key? key}) : super(key: key);

  @override
  State<FilterSortButton> createState() => _FilterSortButtonState();
}

class _FilterSortButtonState extends State<FilterSortButton> {

  String dropDownValue = 'Фильтровать';

  final Map<String, dynamic> categoryItems = {
    'Фильтровать': Filter.ALL,
    'Мужская одежда': Filter.HIGH_PRICE,
    'Ювелирная': Filter.LOW_PRICE,
    'Электроника': Filter.RATING,
  };

  final items = <String>{
    'Фильтровать',
    'По возрастанию',
    'По снижению',
    'По рейтингу',
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
        setState((){
          dropDownValue = newValue!;
        });
      },
    );
  }
}
