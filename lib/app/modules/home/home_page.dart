import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Pets", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(child: Icon(Icons.hourglass_empty)),
          ),
        ),
        floatingActionButton: Container(
          child: FloatingActionButton(
            child: Icon(Icons.add_circle),
            onPressed: () => {},
          )
        ),
      ),
    );
  }
}
