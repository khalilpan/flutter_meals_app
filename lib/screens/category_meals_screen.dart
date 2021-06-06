import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_meals.dart';
import 'package:meals_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgument['title'];
    final categoryId = routeArgument['id'];
    final categoryMeals = DUMMY_MEALS.where((item) {
      return item.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
