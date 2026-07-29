import 'package:flutter/material.dart';
import 'package:news_app/module/list_category_row.dart';
import 'package:news_app/widgets/list_row_category.dart';

class ListRowView extends StatelessWidget {
  const ListRowView({super.key});
  final List<CategoryRow> categoryRow = const [
    CategoryRow(categoryName: 'Business', image: 'assets/ph_business.jpg'),
    CategoryRow(
      categoryName: 'Entertainment',
      image: 'assets/ph_entertainment.jpg',
    ),
    CategoryRow(categoryName: 'Technology', image: 'assets/ph_technology.jpeg'),
    CategoryRow(categoryName: 'Health', image: 'assets/ph_health.png'),
    CategoryRow(categoryName: 'Science', image: 'assets/ph_science.jpg'),
    CategoryRow(categoryName: 'Sports', image: 'assets/ph_sports.jpg'),
    CategoryRow(categoryName: 'General', image: 'assets/ph_general.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryRow.length,
        itemBuilder: (context, index) =>
            CategoryCard(categoryRow: categoryRow[index]),
      ),
    );
  }
}
