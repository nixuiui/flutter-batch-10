import 'package:flutter_batch_10/pages/day_4/gridview_builder_page.dart';
import 'package:flutter_batch_10/pages/day_4/gridview_count_page.dart';
import 'package:flutter_batch_10/pages/day_4/gridview_page.dart';
import 'package:flutter_batch_10/pages/day_4/listview_builder_page.dart';
import 'package:flutter_batch_10/pages/day_4/listview_page.dart';
import 'package:flutter_batch_10/pages/day_4/listview_separated_page.dart';
import 'package:flutter_batch_10/pages/day_5/main_menu_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String gridviewPage = '/gridviewPage';
  static const String gridViewCount = '/gridViewCount';
  static const String gridViewBuilder = '/gridViewBuilder';
  static const String listViewPage = '/listViewPage';
  static const String listViewBuilder = '/listViewBuilder';
  static const String listViewSeparated = '/listViewSeparated';
}

final routes = {
  AppRoutes.home: (context) => const MainMenuPage(),
  AppRoutes.gridviewPage: (context) => const GridviewPage(),
  AppRoutes.gridViewCount: (context) => const GridviewCountPage(),
  AppRoutes.gridViewBuilder: (context) => const GridviewBuilderPage(),
  AppRoutes.listViewPage: (context) => const ListViewPage(),
  AppRoutes.listViewBuilder: (context) => const ListViewBuilderPage(),
  AppRoutes.listViewSeparated: (context) => const ListViewSeparatorPage(),
};