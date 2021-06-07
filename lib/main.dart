import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_meals.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String titleApp = 'Meals App';

  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
  };

  void _setFilters(Map<String, bool> filtersData) {
    setState(() {
      _filters = filtersData;

      _filteredMeals = DUMMY_MEALS.where((item) {
        if (_filters['gluten'] && !item.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] && !item.isLactoseFree) {
          return false;
        }
        if (_filters['vegetarian'] && !item.isVegetarian) {
          return false;
        }
        if (_filters['vegan'] && !item.isVegan) {
          return false;
        }

        return true;
      }).toList();
    });
  }

  List<Meal> _filteredMeals = DUMMY_MEALS;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleApp,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      // home: CategoriesScreen(),
      routes: {
        '/': (cts) => TabsScreen(),
        CategoriesScreen.routeName: (ctx) =>
            CategoryMealsScreen(filteredmealstoShow: _filteredMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routename: (cts) =>
            FiltersScreen(saveFilters: _setFilters,currentFilters: _filters),
      },
      onGenerateRoute: (settings) {
        print('=========' + settings.arguments);
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
