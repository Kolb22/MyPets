import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Pets", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(child: Icon(Icons.hourglass_empty)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_circle),
          onPressed: () => {},
        ),
      ),
    );
  }
}
