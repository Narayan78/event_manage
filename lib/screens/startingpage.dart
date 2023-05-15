import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 28, right: 35),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Find Interesting Events to join!",
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "We share all events like charity, workshop, blood drive, etc.",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 132, 130, 130)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
              ),
              child: Image.asset("assets/bg.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const HomePage());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 10, 19, 35),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Color.fromARGB(255, 112, 109, 109),
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 19, 35),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
