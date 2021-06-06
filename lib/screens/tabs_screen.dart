import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'favorites',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              CategoriesScreen(),
              FavoritesScreen(),
            ],
          ),
        ));
  }
}
