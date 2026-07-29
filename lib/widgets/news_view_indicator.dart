import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/module/artical_model.dart';
import 'package:news_app/service/news_servic.dart';
import 'package:news_app/widgets/list_column_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String categorys;
  const NewsListViewBuilder({super.key, required this.categorys});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(category: widget.categorys);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,

      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListColumnView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                'oops, there is an error. try later.',
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
