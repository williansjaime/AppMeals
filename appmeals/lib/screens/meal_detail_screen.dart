import 'dart:js_util';

import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});
  
  Widget _createSectionTitle(BuildContext context, String title){
    return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline5,
                  ),
              );
  }
  
  Widget _createSectionContainer(Widget child)
  {
    return Container(
                width: 330,
                height: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: child,
    );
  }
     
  
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
          appBar: AppBar(
            title: Text(meal.title),
            ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    meal.imageUrl,
                    fit: BoxFit.cover,
                  )
                ),
                _createSectionTitle(context,"Ingrediente"),
                _createSectionContainer(
                  ListView.builder(
                    itemCount: meal.ingredients.length,
                    itemBuilder: (ctx, index) {
                      return Card(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            child: Text(
                              meal.ingredients[index],
                              ),
                          ),
                        color: Theme.of(context).accentColor,
                        );
                    })),              
                _createSectionTitle(context,"Passos"),
                _createSectionContainer(
                  ListView.builder(
                    itemCount: meal.steps.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(child: Text("${index + 1}"),),
                            title: Text(meal.steps[index]),
                          ),
                          Divider()
                        ],
                      );
                    }),
          
                  
                ))
              ],
            ),
          ),
             
    );
  }
}