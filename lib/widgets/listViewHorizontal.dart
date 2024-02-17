import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/cardModel.dart';
import 'package:news_app_ui_setup/widgets/cardWidget.dart';

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({super.key});

  final List<CardModel> cardList = const [
    CardModel(nameCard: 'Business', imageCard: 'assets/technology.jpeg'),
    CardModel(nameCard: 'Entertainment', imageCard: 'assets/entertaiment.avif'),
    CardModel(nameCard: 'General', imageCard: 'assets/science.avif'),
    CardModel(nameCard: 'Health', imageCard: 'assets/health.avif'),
    CardModel(nameCard: 'Science', imageCard: 'assets/science.avif'),
    CardModel(nameCard: 'Technology', imageCard: 'assets/technology.jpeg'),
    CardModel(nameCard: 'Sports', imageCard: 'assets/entertaiment.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          return CardWidget(cardModel_obj: cardList[index]);
        },
      ),
    );
  }
}
