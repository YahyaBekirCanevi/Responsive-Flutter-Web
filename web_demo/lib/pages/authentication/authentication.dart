import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/routing/routes.dart';
import 'package:web_demo/site_layout.dart';
import 'package:web_demo/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
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
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 12),
                    child: CustomText(
                      text: "Web Demo",
                      color: dark,
                      size: 24,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Container(color: Colors.amber),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Container(color: Colors.amber),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abc@domain.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "123456",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (val) {},
                      ),
                      const CustomText(
                        text: "Remember Me",
                      ),
                    ],
                  ),
                  CustomText(
                    text: "Forgot Password",
                    color: active,
                  ),
                ],
              ),
              const SizedBox(height: 15),
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
                    text: "Login",
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
