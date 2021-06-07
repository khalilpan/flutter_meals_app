import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _Tabs = [
    {
      'tab': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'tab': FavoritesScreen(),
      'title': 'Favorites',
    }
  ];

  int _selectedTabIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_Tabs[_selectedTabIndex]['title']),
        // bottom: TabBar(tabs: [
        //   Tab(
        //     icon: Icon(Icons.category),
        //     text: 'categories',
        //   ),
        //   Tab(
        //     icon: Icon(Icons.star),
        //     text: 'favorites',
        //   ),
        // ]),
        // ),
        // body: TabBarView(
        //   children: [
        //     CategoriesScreen(),
        //     FavoritesScreen(),
        //   ],
      ),
      body: _Tabs[_selectedTabIndex]['tab'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
