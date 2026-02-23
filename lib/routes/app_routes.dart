import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/models/menu_option.dart';
import 'package:my_first_app_flutter/screens/buttons_screen.dart';
import 'package:my_first_app_flutter/screens/cards_screen.dart';
import 'package:my_first_app_flutter/screens/containers.dart';
import 'package:my_first_app_flutter/screens/images_banner.dart';
import 'package:my_first_app_flutter/screens/rows_columns.dart';

class AppRoutes {


final options = [
  MenuOption(route: 'buttons', title: 'Botones', screen: ButtonsScreen(), icon : Icon(Icons.smart_button_outlined)),
  MenuOption(route: 'rows_columns', title: 'Filas y Columnas', screen: RowsColumnsScreen(), icon : Icon(Icons.table_bar)),
  MenuOption(route: 'containers', title: 'Contenedores', screen: ContainersScreen(), icon : Icon(Icons.view_in_ar_outlined)),
  MenuOption(route: 'images_banner', title: 'Imagenes y Banner', screen: ImagesBanner(), icon : Icon(Icons.image_outlined)),
  MenuOption(route: 'cards', title: 'Cards', screen: CardsScreen(), icon : Icon(Icons.card_giftcard_sharp)),
];
}