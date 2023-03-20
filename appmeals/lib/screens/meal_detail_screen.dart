import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  //const MealDetailScreen({super.key});
  const MealDetailScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
          appBar: AppBar(
            title: Text(meal.title),
            ),
          body: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                )
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Ingrediente",
                  style: Theme.of(context).textTheme.headline5,
                  ),
              ),
              Container(
                width: 300,
                height: 250,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ingrediente",
                  style: Theme.of(context).textTheme.headline5,
                  ),
              ),
            ],
          ),
             
    );
  }
}