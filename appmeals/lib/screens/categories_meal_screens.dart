import '../models/category.dart';
import 'package:flutter/material.dart';
import '../components/meal_item.dart';
import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});
  //final Category category;

  //const CategoriesMealsScreen(this.category);

  @override
  Widget build(BuildContext context) 
  {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    
    final categoryMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount:categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },

      )
      // body: Center(
      //   child: Text("Receitas por Categoria${category.id}"),
      //   ),
    );
  }
}