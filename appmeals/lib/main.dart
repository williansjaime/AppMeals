import 'package:flutter/material.dart';
import 'screens/categoies_screen.dart'; 
import 'screens/categories_meal_screens.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch:Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6:TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      //home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME:(ctx) => const CategoriesScreen(),         
        AppRoutes.CATEGORIES_MEALS:(context) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL:(ctxt) => const MealDetailScreen(),
        
      },
      /*onGenerateRoute: (settings){
        if(settings.name == "/alguma-coisa"){
          return null;
        }else if(settings.name == "/outra-coisa"){
          return null;
        }else{
          return MaterialPageRoute(builder: (_){
              return CategoriesScreen();
          });
        }
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_){
          return CategoriesMealsScreen();
        });
      },*/
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navegar é preciso!!'),
      ),
    );
  }
}