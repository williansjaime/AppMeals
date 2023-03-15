import 'package:appmeals/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesMealsScreen extends StatelessWidget {
  //const CategoriesMealsScreen({super.key});
  //final Category category;

  //const CategoriesMealsScreen(this.category);

  @override
  Widget build(BuildContext context) 
  {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text("Receitas por Categoria${category.id}"),
        ),
    );
  }
}