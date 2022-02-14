import 'package:flutter/material.dart';
import 'package:web_demo/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
            InfoCard(
                title: "To Do",
                value: "7",
                onTap: () {},
                topColor: Colors.redAccent,
            ),
            InfoCard(
                title: "In Progress",
                value: "35",
                onTap: () {},
                topColor: Colors.amber,
            ),
            InfoCard(
                title: "Done",
                value: "8",
                onTap: () {},
                topColor: Colors.greenAccent,
            ),
        ],
      ),
    );
  }
}