import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  //const MealItem({super.key});
  final Meal meal;

  const MealItem(this.meal);

  void _selectMeals(){}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeals,
      child:
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      meal.imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
  }
}