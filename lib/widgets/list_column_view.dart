import 'package:flutter/material.dart';
import 'package:news_app/module/artical_model.dart';
import 'package:news_app/widgets/list_column_category.dart';

class ListColumnView extends StatelessWidget {
  final List<ArticalModel> articles;

  const ListColumnView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return ColumnCategory(articalCatregory: articles[index]);
      }, childCount: articles.length),
    );
  }
}
