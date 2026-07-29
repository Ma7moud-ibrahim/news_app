import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_row_view.dart';
import 'package:news_app/widgets/news_view_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: Colors.black, fontSize: 35)),
            Text('Cloud', style: TextStyle(color: Colors.orange, fontSize: 35)),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ListRowView()),
          NewsListViewBuilder(categorys: 'general'),
        ],
      ),
    );
  }
}
