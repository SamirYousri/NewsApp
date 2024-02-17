import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articalesModel.dart';
import 'package:news_app_ui_setup/services/service.dart';
import 'package:news_app_ui_setup/widgets/ListViewVerticall.dart';

class FutureBilder extends StatefulWidget {
  const FutureBilder({super.key, required this.category});
  final String category;
  @override
  State<FutureBilder> createState() => _FutureBilderState();
}
var future0;
class _FutureBilderState extends State<FutureBilder> {
  @override
  void initState() {
    super.initState();
    future0 = serviceNews(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalesModel>>(
        future: future0,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListViewVertical(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('Oops is error now'),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
