import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articalesModel.dart';

class CategoryListVertical extends StatelessWidget {
  const CategoryListVertical({super.key, required this.articalesModel0});
  final ArticalesModel articalesModel0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 20, left: 20),
      child: Column(
        children: [
          ClipRRect(
            child: Image.network(
              articalesModel0.image ?? 'assets/science.avif',
              height: 200,
              width: double.infinity,
              //fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          Text(
            articalesModel0.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            articalesModel0.subTitle ?? 'No Data',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
