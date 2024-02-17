import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/cardModel.dart';
import 'package:news_app_ui_setup/widgets/gategoryCard.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.cardModel_obj});

  final CardModel cardModel_obj;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryCard(
                categoryCard0: cardModel_obj.nameCard,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(cardModel_obj.imageCard),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              cardModel_obj.nameCard,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
