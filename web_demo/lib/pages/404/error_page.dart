import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/routing/routes.dart';
import 'package:web_demo/widgets/custom_text.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/error.png',
                width: 400,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomText(
                    text: "Page Not Found",
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () => Get.offAllNamed(rootRoute),
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const CustomText(
                    text: "Return To Home",
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
