import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_view_indicator.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [NewsListViewBuilder(categorys: category)],
      ),
    );
  }
}
