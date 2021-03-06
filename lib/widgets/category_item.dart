import 'package:flutter/material.dart';
import '../screens/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem({
    this.id,
    this.title,
    this.color,
  });

  void selectcategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMeals.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcategory(context),
      splashColor: Colors.deepOrange,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
