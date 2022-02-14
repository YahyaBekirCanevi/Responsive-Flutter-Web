import 'package:flutter/material.dart';
import 'package:web_demo/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
      children: [
        InfoCardSmall(
          title: "To Do",
          value: "7",
          onTap: () {},
        ),
        InfoCardSmall(
          title: "In Progress",
          value: "35",
          onTap: () {},
        ),
        InfoCardSmall(
          title: "Done",
          value: "8",
          onTap: () {},
        ),
      ],
    );
  }
}
