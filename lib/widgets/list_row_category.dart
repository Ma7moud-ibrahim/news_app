import 'package:flutter/material.dart';
import 'package:news_app/module/list_category_row.dart';
import 'package:news_app/widgets/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryRow});
  final CategoryRow categoryRow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: categoryRow.categoryName.toLowerCase(),
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(categoryRow.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              categoryRow.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
