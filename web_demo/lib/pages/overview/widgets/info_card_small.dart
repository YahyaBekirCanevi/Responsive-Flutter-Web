import 'package:flutter/material.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final bool isActive;
  final Function()? onTap;

  const InfoCardSmall(
      {Key? key, this.title, this.value, this.isActive = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? active : lightGrey,
              width: .4,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                weight: FontWeight.w300,
                color: isActive ? active : lightGrey,
              ),
              CustomText(
                text: value,
                size: 24,
                weight: FontWeight.bold,
                color: isActive ? active : lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
