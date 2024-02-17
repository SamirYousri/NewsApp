import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articalesModel.dart';
import 'package:news_app_ui_setup/widgets/categoryList.dart';

class NewsListViewVertical extends StatelessWidget {
  final List<ArticalesModel> articles;

  const NewsListViewVertical({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: CategoryListVertical(
              articalesModel0: articles[index],
            ),
          );
        },
      ),
    );
  }
}
