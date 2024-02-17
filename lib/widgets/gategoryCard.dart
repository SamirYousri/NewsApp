import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/listViewVerticalBuilder.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryCard0});
  final String categoryCard0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          FutureBilder(
            category: categoryCard0,
          ),
        ],
      ),
    );
  }
}
