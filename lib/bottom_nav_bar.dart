import 'package:resume_app/pages/lang_interests.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.person_pin_circle_sharp), label: 'About'),
            NavigationDestination(
                icon: Icon(Icons.book), label: 'Languages & Interests'),
            NavigationDestination(
                icon: Icon(Icons.computer), label: 'Skills'),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(
      color: Colors.green,
    ),
    const LangInt(),
    Container(
      color: Colors.red,
    ),
  ];
}
